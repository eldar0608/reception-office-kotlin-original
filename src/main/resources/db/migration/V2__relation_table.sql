ALTER TABLE public.enrolleeparents
  ADD CONSTRAINT enrolleeparents_city_id_fk
FOREIGN KEY (city_id) REFERENCES city (id);

ALTER TABLE public.enrolleeparents
  ADD CONSTRAINT enrolleeparents_country_id_fk
FOREIGN KEY (country_id) REFERENCES country (id);

ALTER TABLE public.enrolleeparents
  ADD CONSTRAINT enrolleeparents_rayon_id_fk
FOREIGN KEY (rayon_id) REFERENCES rayon (id);

ALTER TABLE public.enrolleeparents
  ADD CONSTRAINT enrolleeparents_region_id_fk
FOREIGN KEY (region_id) REFERENCES region (id);

ALTER TABLE public.enrolleeparents
  ADD CONSTRAINT enrolleeparents_enrolleeinfo_id_fk
FOREIGN KEY (enrollee_id) REFERENCES enrolleeinfo (id);

ALTER TABLE public.education
  ADD CONSTRAINT education_city_id_fk
FOREIGN KEY (city_id) REFERENCES city (id);

ALTER TABLE public.education
  ADD CONSTRAINT education_country_id_fk
FOREIGN KEY (country_id) REFERENCES country (id);

ALTER TABLE public.education
  ADD CONSTRAINT education_enrolleeinfo_id_fk
FOREIGN KEY (enrollee_id) REFERENCES enrolleeinfo (id);

ALTER TABLE public.education
  ADD CONSTRAINT education_rayon_id_fk
FOREIGN KEY (rayon_id) REFERENCES rayon (id);

ALTER TABLE public.education
  ADD CONSTRAINT education_region_id_fk
FOREIGN KEY (region_id) REFERENCES region (id);

ALTER TABLE public.enrolleeinfo
  ADD CONSTRAINT enrolleeinfo_citizenship_id_fk
FOREIGN KEY (citizenship_id) REFERENCES citizenship (id);

ALTER TABLE public.enrolleeinfo
  ADD CONSTRAINT enrolleeinfo_familystatus_id_fk
FOREIGN KEY (familystatus_id) REFERENCES familystatus (id);

ALTER TABLE public.enrolleeinfo
  ADD CONSTRAINT enrolleeinfo_male_id_fk
FOREIGN KEY (male_id) REFERENCES male (id);

ALTER TABLE public.enrolleeinfo
  ADD CONSTRAINT enrolleeinfo_nationality_id_fk
FOREIGN KEY (nationality_id) REFERENCES nationality (id);

ALTER TABLE public.enrolleeinfo
  ADD CONSTRAINT enrolleeinfo_socstatus_id_fk
FOREIGN KEY (socstatus_id) REFERENCES socstatus (id);

ALTER TABLE public.militaryservice
  ADD CONSTRAINT militaryservice_enrolleeinfo_id_fk
FOREIGN KEY (enrollee_id) REFERENCES enrolleeinfo (id);

ALTER TABLE public.selectedspecialty
  ADD CONSTRAINT selectedspecialty_enrolleeinfo_id_fk
FOREIGN KEY (enrollee_id) REFERENCES enrolleeinfo (id);

ALTER TABLE public.selectedspecialty
  ADD CONSTRAINT selectedspecialty_selectedspecialty_id_fk
FOREIGN KEY (specialty_id) REFERENCES selectedspecialty (id);

ALTER TABLE public.speciality
  ADD CONSTRAINT speciality_facility_id_fk
FOREIGN KEY (facility_id) REFERENCES facility (id);

ALTER TABLE public.testing
  ADD CONSTRAINT testing_academicsubject_id_fk
FOREIGN KEY (subject_id) REFERENCES academicsubject (id);

ALTER TABLE public.users
  ADD CONSTRAINT users_role_id_fk
FOREIGN KEY (role_id) REFERENCES role (id);