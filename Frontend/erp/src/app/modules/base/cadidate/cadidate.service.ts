import { Injectable } from "@angular/core";
import { Observable } from 'rxjs';
import { FilterModel } from 'src/app/core/models/filter.model';
import { PagingModel } from 'src/app/core/models/paging.model';
import { ResponseModel } from 'src/app/core/models/response.model';
import { ApiService } from 'src/app/core/services/api.service';
import { environment } from 'src/environments/environment';
import { Cadidate } from './cadidate.model';

@Injectable({
  providedIn:'root'
})

export class CadidateService{

  constructor(private api: ApiService){}

  url={
    insert: '/candidate/candidate/insert',
    update: '/candidate/candidate/update',
    getlist: '/candidate/candidate/get-list',
    delete: '/candidate/candidate/delete',
    item: '/candidate/candidate/item',
    dropdown: '/common/skill/drop-down'
  }

  insert(model: FormData):Observable<ResponseModel>{
    console.log(`${environment.apiUrl}${this.url.insert}`);
    return this.api.insert(`${environment.apiUrl}${this.url.insert}`,model);
  }
  
  update(model: FormData):Observable<ResponseModel>{
    return this.api.update(`${environment.apiUrl}${this.url.update}`,model);
  }

  getList(paging: PagingModel,searchText:string,processId : number,jobId : number):Observable<ResponseModel>{
    const filter = new FilterModel();
    filter.text = searchText;
    filter.paging.pageIndex = paging.pageIndex;
    filter.paging.pageSize = paging.pageSize;
    filter.jobId = jobId;
    filter.processId = processId;
    return this.api.getList(`${environment.apiUrl}${this.url.getlist}`,filter);
  }

  item(id:number):Observable<ResponseModel>{
    return this.api.item(`${environment.apiUrl}${this.url.item}`,id);
  }

  dropdown():Observable<ResponseModel>{
    return this.api.dropDown(`${environment.apiUrl}${this.url.dropdown}`);
  }
}