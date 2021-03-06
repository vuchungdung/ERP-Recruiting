import { HttpClient, HttpEventType } from '@angular/common/http';
import { Input, Output } from '@angular/core';
import { EventEmitter } from '@angular/core';
import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { FormStatus } from 'src/app/core/enums/form-status.enum';
import { ResponseStatus } from 'src/app/core/enums/response-status.enum';
import { ResponseModel } from 'src/app/core/models/response.model';
import { AppValidator } from 'src/app/core/validators/app.validators';
import { NotificationService } from 'src/app/shared/services/toastr.service';
import { environment } from 'src/environments/environment';
import { JobCategoryService } from '../../config-system/job-category/job-category.service';
import { ProviderService } from '../../config-system/provider/provider.service';
import { SkillService } from '../../config-system/skill/skill.service';
import { Cadidate} from '../cadidate.model';
import { CadidateService } from '../cadidate.service';

@Component({
  selector: 'app-form',
  templateUrl: './form.component.html',
  styleUrls: ['./form.component.css']
})
export class FormComponent implements OnInit {

  @Output() onUploadFinished = new EventEmitter();
  @Output() isReloadTable = new EventEmitter();
  @Output() isShow = new EventEmitter<boolean>();

  public cadidateForm : FormGroup;
  public progress: number;
  public item: Cadidate;
  public id: number;
  public img: string;
  public pdf: any;
  public resFile : any;
  public listFile = [];
  public json:string;
  public listSkills: any[];
  public listCategorys: any[];
  public listProviders: any[];
  public action : FormStatus = FormStatus.Unknow;

  constructor(
    private fb: FormBuilder,
    private http: HttpClient,
    private cadidateService: CadidateService,
    private skillService: SkillService,
    private providerService: ProviderService,
    private jobcategoryService: JobCategoryService,
    private notify : NotificationService
  ) { }

  url = {
    upload: '/common/file/upload'
  }  

  ngOnInit(): void {
    this.cadidateForm = this.fb.group({
      cadidateId:[0,Validators.required],
      name:['',Validators.required],
      dob:['',[Validators.required]],
      gender:[0,Validators.required],
      phone:['',Validators.required],
      email:['',[Validators.required,Validators.email]],
      address:['',Validators.required],
      degree:['',Validators.required],
      university:['',Validators.required],
      major:['',Validators.required],
      categoryId:['',[Validators.required,AppValidator.number]],
      providerId:['',[Validators.required,AppValidator.number]],
      skill:['',Validators.required],
      applyDate:['',[Validators.required]],
      experience:['',Validators.required]
    });
    this.dropdownSkill();
    this.dropdownProvider();
    this.dropdownCategory();
  }
  uploadFile(files){
    const formData = new FormData();
    if (files.length === 0) {
      return;
    }
    let fileToUpload = <File>files[0];
    this.listFile.push(fileToUpload);
    formData.append('file', fileToUpload, fileToUpload.name);
    this.http.post(`${environment.apiUrl}${this.url.upload}`, formData, {reportProgress: true, observe: 'events'})
      .subscribe(event => {
        if (event.type === HttpEventType.Response) {        
          this.onUploadFinished.emit(event.body);
          this.resFile = event.body;
          if(this.resFile.result.fileType == ".pdf"){
            this.pdf = this.resFile.result;
            this.pdf.name = this.pdf.fileName;
            this.pdf.size = this.pdf.fileSize;
          }
          else if(this.resFile.result.fileType != ".pdf"){
            this.img = this.resFile.result.dbPath;
          }
        }
      }
    );
  }
  initCadidateForm(){
    this.cadidateForm.get('cadidateId').setValue(0);
    this.cadidateForm.get('name').reset();
    this.cadidateForm.get('dob').reset();
    this.cadidateForm.get('email').reset();
    this.cadidateForm.get('address').reset();
    this.cadidateForm.get('degree').reset();
    this.cadidateForm.get('phone').reset();
    this.cadidateForm.get('skill').reset();
    this.cadidateForm.get('providerId').reset();
    this.cadidateForm.get('applyDate').reset();
    this.cadidateForm.get('categoryId').reset();
    this.cadidateForm.get('experience').reset();
    this.cadidateForm.get('university').reset();
    this.cadidateForm.get('major').reset();
    this.cadidateForm.get('experience').reset();
  }

  saveForm(){
    if(this.cadidateForm.invalid){
      this.notify.showWarning("Vui lòng nhập thông tin!","Thông báo");
      return;
    }
    if(this.action == FormStatus.Insert){
      const formValues = this.cadidateForm.getRawValue();
      const formData = this.ToFormData(formValues);
      this.listFile.forEach(file => {
        formData.append('files', file, file.name);
      });
      this.cadidateService.insert(formData).subscribe((res:ResponseModel)=>{
        if(res.status == ResponseStatus.success){
          this.isShow.emit(true);
          this.isReloadTable.emit(true);
          this.notify.showSuccess("Thêm mới thành công!","Thông báo");
          this.action = FormStatus.Insert;
          this.initCadidateForm();         
        }
      })
    }
  }
  openFormInsert(){
    this.isShow.emit(false);
    this.action = FormStatus.Insert;
    this.initCadidateForm();
  }
  getItem(){

  }

  setDataForm(){

  }

  createImgPath(){
    return `https://localhost:44379/${this.img}`;
  }

  ToFormData(formValue: any) {
    const formData = new FormData();
    for (const key of Object.keys(formValue)) {
      let value = formValue[key];
      if(key === "dob" || key ==="applyDate"){
        const month = value.getMonth()+1;
        const day = value.getDate();
        const year = value.getFullYear();
        value = `${month}-${day}-${year}`;
        console.log(value);
      }
      else if(key==="skill"){
        let tmp = "";
        value.forEach(element => {
          tmp = tmp + element + ",";
        });
        value = tmp;
      }
      formData.append(key, value);
    }
    console.log(formData.get('category'))
    return formData;
  }

  dropdownSkill(){
    return this.skillService.dropdown().subscribe((res:ResponseModel)=>{
      if(res.status == ResponseStatus.success){
        this.listSkills = res.result;
      }
    })
  }
  dropdownProvider(){
    return this.providerService.dropdown().subscribe((res:ResponseModel)=>{
      if(res.status == ResponseStatus.success){
        this.listProviders = res.result;
        console.log(res.result);
      }
    })
  }
  dropdownCategory(){
    return this.jobcategoryService.dropdown().subscribe((res:ResponseModel)=>{
      if(res.status == ResponseStatus.success){
        this.listCategorys = res.result;
        console.log(res.result);
      }
    })
  }

  showForm(){
    if(this.action == FormStatus.Unknow)
      return false;
    return true;
  }

  onBack(){
    this.action = FormStatus.Unknow;
    this.isShow.emit(true);
  }
}
