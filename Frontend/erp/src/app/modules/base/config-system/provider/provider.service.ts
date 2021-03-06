import { Injectable } from "@angular/core";
import { Observable } from 'rxjs';
import { FilterModel } from 'src/app/core/models/filter.model';
import { PagingModel } from 'src/app/core/models/paging.model';
import { ResponseModel } from 'src/app/core/models/response.model';
import { ApiService } from 'src/app/core/services/api.service';
import { environment } from 'src/environments/environment';
import { Providers } from './provider.model';

@Injectable({
  providedIn:'root'
})

export class ProviderService{
  url={
    insert:'/common/provider/insert',
    item:'/common/provider/item',
    getlist:'/common/provider/get-list',
    update:'/common/provider/update',
    delete:'/common/provider/delete',
    dropdown:'/common/provider/dropdown'
  };

  constructor(private api: ApiService){

  };

  insert(model: Providers):Observable<ResponseModel>{
    return this.api.insert(`${environment.apiUrl}${this.url.insert}`,model);
  }

  update(model: Providers):Observable<ResponseModel>{
    return this.api.update(this.url.update,model);
  }

  item(id:number):Observable<ResponseModel>{
    return this.api.item(this.url.item,id);
  }

  getList(paging: PagingModel,searchText:string):Observable<ResponseModel>{
    const filter = new FilterModel();
    filter.text = searchText;
    filter.paging.pageIndex = paging.pageIndex;
    filter.paging.pageSize = paging.pageSize;
    return this.api.getList(`${environment.apiUrl}${this.url.getlist}`,filter);
  }

  dropdown():Observable<ResponseModel>{
    return this.api.dropDown(`${environment.apiUrl}${this.url.dropdown}`)
  }
}