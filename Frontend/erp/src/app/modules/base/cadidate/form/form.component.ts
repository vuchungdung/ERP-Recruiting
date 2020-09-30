import { HttpClient, HttpEventType } from '@angular/common/http';
import { Output } from '@angular/core';
import { EventEmitter } from '@angular/core';
import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { MatDialogRef } from '@angular/material/dialog';
import { FormStatus } from 'src/app/core/enums/form-status.enum';
import { ResponseStatus } from 'src/app/core/enums/response-status.enum';
import { ResponseModel } from 'src/app/core/models/response.model';
import { AppValidator } from 'src/app/core/validators/app.validators';
import { environment } from 'src/environments/environment';
import { Cadidate} from '../cadidate.model';
import { CadidateService } from '../cadidate.service';

@Component({
  selector: 'app-form',
  templateUrl: './form.component.html',
  styleUrls: ['./form.component.css']
})
export class FormComponent implements OnInit {

  @Output() onUploadFinished = new EventEmitter();
  @Output() isReLoadCadidate = new EventEmitter();

  public cadidateForm : FormGroup;
  public progress: number;
  public item: Cadidate;
  public id: number;
  public action: FormStatus;
  public img: string;
  public pdf: any;
  public resFile : any;
  public listFile = [];
  public json:string;

  constructor(
    private fb: FormBuilder,
    private http: HttpClient,
    private dialogRef: MatDialogRef<FormComponent>,
    private cadidateService: CadidateService
  ) { }

  url = {
    upload: '/common/file/upload',
    insert : '/cadidate/cadidate/insert'
  }  

  ngOnInit(): void {
    this.cadidateForm = this.fb.group({
      name:['demo',Validators.required],
      //dob:['',Validators.required],
      gender:[0,Validators.required],
      phone:['demo',Validators.required],
      email:['demo@gmail.com',[Validators.required,Validators.email]],
      address:['demo',Validators.required],
      degree:['demo',Validators.required],
      university:['demo',Validators.required],
      major:['demo',Validators.required],
      category:[0,[Validators.required,AppValidator.number]],
      provider:[0,[Validators.required,AppValidator.number]],
      skill:['0',Validators.required],
      //applydate:['',Validators.required],
      experience:['demo',Validators.required],
    });
    //this.initCadidateForm();
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
          console.log(this.listFile);
        }
      });
  }
  initCadidateForm(){
    const action = this.dialogRef.componentInstance.action;
    if(action == FormStatus.Insert){
      this.cadidateForm.get('name').reset();
      //this.cadidateForm.get('dob').reset();
      this.cadidateForm.get('email').reset();
      this.cadidateForm.get('address').reset();
      this.cadidateForm.get('degree').reset();
      this.cadidateForm.get('phone').reset();
      this.cadidateForm.get('skill').setValue('0');
      this.cadidateForm.get('provider').setValue(0);
      //this.cadidateForm.get('applydate').reset();
      this.cadidateForm.get('category').setValue(0);
      this.cadidateForm.get('experience').reset();
      this.cadidateForm.get('university').reset();
      this.cadidateForm.get('major').reset();
      this.cadidateForm.get('experience').reset();
    }
    else if(action == FormStatus.Update){
      const id = this.dialogRef.componentInstance.id;
    }
  }

  saveForm(){
    debugger
    const action = this.dialogRef.componentInstance.action;
    if(this.cadidateForm.invalid){
      return;
    }
    if(action == FormStatus.Insert){
      const formValues = this.cadidateForm.getRawValue();
      const formData = this.ToFormData(formValues);
      this.listFile.forEach(file => {
        formData.append('files', file, file.name);
      });
      console.log(JSON.stringify(formData));
      this.cadidateService.insert(formData).subscribe((res:ResponseModel)=>{

      })
    }
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
      const value = formValue[key];
      formData.append(key, value);
    }
    return formData;
  }
}
