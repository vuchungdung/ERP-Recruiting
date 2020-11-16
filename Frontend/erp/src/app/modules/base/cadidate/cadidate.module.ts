import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { CadidateComponent } from './cadidate.component';
import { MatButtonModule } from '@angular/material/button';
import { MatSelectModule } from '@angular/material/select';
import { MatTableModule } from '@angular/material/table';
import { MatCheckboxModule } from '@angular/material/checkbox';
import { MatPaginatorModule } from '@angular/material/paginator';
import { MatMenuModule } from '@angular/material/menu';
import { MatIconModule } from '@angular/material/icon';
import { FormComponent } from './form/form.component';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatDatepickerModule } from '@angular/material/datepicker';
import { MatNativeDateModule } from '@angular/material/core';
import { MatRadioModule } from '@angular/material/radio';
import { MatInputModule } from '@angular/material/input';
import { ReactiveFormsModule, FormsModule } from '@angular/forms';
import { CadidateRoutingModule } from './cadidate-routing.module';
import { CadidateService } from './cadidate.service';
import { SkillService } from '../config-system/skill/skill.service';
import { JobCategoryService } from '../config-system/job-category/job-category.service';
import { ProviderService } from '../config-system/provider/provider.service';
import { NotificationService } from 'src/app/shared/services/toastr.service';

@NgModule({
  declarations: [
    CadidateComponent,
    FormComponent
  ],
  imports: [
    CommonModule,
    FormsModule,
    ReactiveFormsModule,
    MatButtonModule,
    MatSelectModule,
    MatTableModule,
    MatCheckboxModule,
    MatPaginatorModule,
    MatMenuModule,
    MatIconModule,
    MatFormFieldModule,
    MatNativeDateModule,
    MatDatepickerModule,
    MatRadioModule,
    MatInputModule,
    CadidateRoutingModule
  ],
  providers:[
    CadidateService,
    SkillService,
    JobCategoryService,
    ProviderService,
    NotificationService
  ]
})
export class CadidateModule { }