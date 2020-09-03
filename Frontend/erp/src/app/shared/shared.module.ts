import { NgModule } from '@angular/core';
import { appInterceptors } from './app.Interceptors';
import { ApiService } from '../core/services/api.service';

@NgModule({
  providers:[
    appInterceptors,
    ApiService
  ]
})
export class SharedModule { }
