CREATE TABLE `attacker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` text,
  `fname` text,
  `sk` text,
  `dt` text,
  `attacktype` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `cda_reply_letter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_name` text,
  `hospital` text,
  `doctor` text,
  `diagnosis_ref` text,
  `diagnosis_rep` text,
  `illness_ref` text,
  `illness_rep` text,
  `medication_ref` text,
  `medication_rep` text,
  `labratory_ref` text,
  `labratory_rep` text,
  `radiology_ref` text,
  `radiology_rep` text,
  `pathology_ref` text,
  `pathology_rep` text,
  `assessment_ref` text,
  `assessment_rep` text,
  `surgical_ref` text,
  `surgical_rep` text,
  `relevant_ref` text,
  `relevant_rep` text,
  `reason_ref` text,
  `reason_rep` text,
  `procedure_ref` text,
  `procedure_rep` text,
  `evaluation_ref` text,
  `evaluation_rep` text,
  `plan_ref` text,
  `plan_rep` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
CREATE TABLE `cloud` (
  `name` text,
  `pass` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `cloudserver` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_name` text,
  `hospital` text,
  `creation_time` text,
  `template_id` text,
  `language_code` text,
  `purpose` text,
  `patient_id` text,
  `patient_gender` text,
  `patient_dob` text,
  `author_id` text,
  `author_name` text,
  `author_org` text,
  `org_name` text,
  `org_addrs` text,
  `org_phno` text,
  `payers` text,
  `advance` text,
  `support` text,
  `functional_status` text,
  `problems` text,
  `family_history` text,
  `social_history` text,
  `allergies` text,
  `medications` text,
  `medical_equipment` text,
  `vital_signs` text,
  `results` text,
  `procedures` text,
  `encounters` text,
  `plan_of_care` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
CREATE TABLE `doc_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient` text,
  `doctor` text,
  `cda_status` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
CREATE TABLE `healthcare_sp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `pass` text,
  `email` text,
  `mobile` text,
  `addr` text,
  `dob` text,
  `gender` text,
  `pin` text,
  `location` text,
  `imagess` longblob,
  `status` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
CREATE TABLE `hospital_a` (
  `name` text,
  `pass` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `hospital_b` (
  `name` text,
  `pass` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `patient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `pass` text,
  `email` text,
  `mobile` text,
  `addr` text,
  `dob` text,
  `gender` text,
  `pin` text,
  `location` text,
  `imagess` longblob,
  `status` text,
  `searchkey` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
CREATE TABLE `request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` text,
  `pname` text,
  `view_per` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
CREATE TABLE `search` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` text,
  `keyword` text,
  `dt` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
CREATE TABLE `transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` text,
  `fname` text,
  `task` text,
  `dt` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
