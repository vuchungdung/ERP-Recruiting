import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { HttpClientModule } from '@angular/common/http';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { CommonModule } from '@angular/common';
import { SharedModule } from './shared/shared.module';
import { ApiService } from './core/services/api.service';
@NgModule({
  declarations: [ //đối với component, khai báo những component của module này sử dụng
    AppComponent
  ],
  imports: [ //đối với module, import những module mà module này cần dùng
    BrowserModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    CommonModule,
    FormsModule,
    ReactiveFormsModule,
    HttpClientModule
  ],
  providers: [ApiService], //đối với services,class,.....,khai báo những services, class mà module này có thể dùng
  bootstrap: [AppComponent]
})
export class AppModule { }
