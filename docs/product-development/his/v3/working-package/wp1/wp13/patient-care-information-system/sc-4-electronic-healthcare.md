# Scenario 4: Electronic Healthcare
Electronic Medical Records (EMR) are digital records of patients' medical histories. They allow doctors to track patient data over time, identify those needing screenings or checkups, and monitor health parameters like blood pressure. This module helps provide efficient, accurate care for the doctor and nurse by keeping patient information digitized, secure and accessible.

: !!! Info "Sub-Scenario List"

        1. [Sub-Scenario 4.1: Diagnostic reports](#sub-scenario-41-diagnostic-reports)
        2. [Sub-Scenario 4.2: Treatment plans](#sub-scenario-42-treatment-plans)
        3. [Sub-Scenario 4.3: Medical Assesment Record](#sub-scenario-43-medical-assesment-record)
        4. [Sub-Scenario 4.4: Prescription and Medication History](#sub-scenario-44-prescriptions-and-medication-history)
        5. [Sub-Scenario 4.5: Lab and Test Result](#sub-scenario-45-lab-and-test-result)
        6. [Sub-Scenario 4.6: Radiologi Images](#sub-scenario-46-radiology-images)
        7. [Sub-Scenario 4.7: Nursing & Other Assessment](#sub-scenario-47-nursing--other-assessment)
        8. [Sub-Scenario 4.8: Progress Notes](#sub-scenario-48-progress-notes)
        9. [Sub-Scenario 4.9: Triage Modules](#sub-scenario-49-triage-modules)
        10. [Sub-Scenario 4.10: Patient Consent Management](#sub-scenario-410-patient-consent-management)
        11. [Sub-Scenario 4.11: Certificate Management](#sub-scenario-411-certificate-management)
        12. [Sub-Scenario 4.12: Medical Record Access Request Management](#sub-scenario-412-medical-record-access-request-management)
        13. [Sub-Scenario 4.13: EMR Reporting System](#sub-scenario-413-emr-reporting-system)

## Sub-Scenario 4.1: Diagnostic reports
This sub-scenarios are explaining the process of collecting and analyzing medical test results to determine a patient's health condition. This process involves __[various medical tests]__, such as blood tests, imaging scans, pain screening and etc, which are interpreted by healthcare professionals. 

The findings are then compiled into a report that provides a comprehensive view of the patient's health status, aiding doctors in diagnosing conditions and formulating treatment plans.

: !!! Example "Use Case List"

        1. [Use Case 1: Integrated Patient Progress Notes (IPPNs)](#use-case-1-integrated-patient-progress-notes-ippns)
        2. [Use Case 2: Initial Patient Report (Subjective & Objective)](#use-case-2-initial-patient-report-subjective--objective)
        3. [Use Case 3: Patient Diagnosis (Assessment)](#use-case-3-patient-diagnosis-assessment)

### Use-case 1: Integrated Patient Progress Notes (IPPNs)

{==

TO DO: USE CASE DIAGRAM

==}

IPPNs are comprehensive records that detail a patient's progress over time. These notes integrate various aspects of patient care, including observations, treatments administered, and responses to those treatments. They provide a holistic view of the patient's journey, facilitating coordinated and informed care among different healthcare professionals.

The CPPT (Comprehensive Patient Progress Template) displayed in HISv3 includes:

- Patient Complaint Information (Subjective): This section captures the patient's self-reported symptoms and concerns.
- Objective notes: it includes the doctor's initial examination to assess previous care and ongoing health issues, recording of any known allergies for safe treatment planning, and the nurse's initial examination covering vital signs and screenings for pain, nutrition, and fall risk. Additionally, other supporting objectives contribute to a comprehensive patient assessment.
- Diagnosis: Includes the process of doctors determining diagnoses

!!! Note
    
    The HISv3 system architecture facilitates the use of the ICD-10 (International Classification of Diseases) standard for consistent and accurate disease classification.

### Use-case 2: Initial Patient Report (Subjective & Objective)

{==

TO DO: USE CASE DIAGRAM

==}

Setelah pasien encounter lalu ditangani selanjutnya masuk ke fase perawat yang akan collect keluhan pasien (subjective). Setelah itu, untuk menunjang penegakan diagnosa yang dilakukan oleh dokter ada sejumlah proses yang perlu dilengkapi baik oleh dokter yaitu:

- Doctor's Initial Examination for Previous Care (if any): This is the part where doctor's findings from the initial examination, focusing on any previous treatments or ongoing health issues.
- Allergy Information: Details of any known allergies the patient has, crucial for safe treatment planning.
- Nurse's Initial Examination: Includes checking vital signs and screening information such as pain assessment, nutritional status, and fall history and more
- Other supporting objetives, such as:

    - Laboratory Assessment
    - Radiology Assessment


### Use-case 3: Patient Diagnosis (Assessment)

{==

TO DO: USE CASE DIAGRAM

==}

For patient diagnosis, there will be three fields provided, which include one admission diagnosis, two discharge diagnoses, and one primary diagnosis.

Additionally, for establishing a diagnosis, we have prepared a standard for filling in the diagnosis using a specific standard.

- SNOMED-CT
- ICD-10



## Sub-Scenario 4.2: Treatment plans
In this phase, the doctor formulates a patient care plan (planning) during the order process. This involves outlining the necessary steps, treatments, and interventions required for the patient's care. It involves scheduling follow-up appointments, arranging for specialist consultations/referral, ordering ancillaries service (Laboratoium, Pharmacy, and Radiology) and planning for any long-term care needs.

!!! Note 
    
    The plan is based on the patient diagnosis (assessment) and includes orders for follow up treatments like medications, ancillaries, and other recommended medical services needed for the patient's treatment and recovery. 

: !!! Example "Use Case List"

        1. [Use Case 1: Consultation Referral](#use-case-1-integrated-patient-progress-notes-ippns)
        2. [Use Case 2: Lab Order](#use-case-2-initial-patient-report-subjective--objective)
        3. [Use Case 3: Radiologi Order](#use-case-3-patient-diagnosis-assessment)
        4. [Use Case 4: Other Department Order](#use-case-1-integrated-patient-progress-notes-ippns)
        5. [Use Case 5: Pharmacy Order](#use-case-2-initial-patient-report-subjective--objective)
        6. [Use Case 6: Viewing Ancillary Results](#use-case-3-patient-diagnosis-assessment)
        7. [Use Case 7: Viewing Prescriptions](#use-case-6-viewing-ancillary-results)

### Use-case 1: Consultation Referral

{==

TO DO: USE CASE DIAGRAM

==}

Doctors can make consultation referrals jika dalam situasi tertentu dokter yang bersangkutan tidak bisa melakukan suatu tindakan yang mana memerlukan dokter spesialist untuk menangani, seperti dalam situasi fasilitas rumah sakit atau kemampuan dokter lebih memadai. 

### Use-case 2: Lab Order

{==

TO DO: USE CASE DIAGRAM

==}

Dokter bisa membaut permintaan pemeriksaan laboratorium seperti: cek darah, permintaan bank darah, dan . . . .

### Use-case 3: Radiologi Order

{==

TO DO: USE CASE DIAGRAM

==}

Dokter bisa membaut permintaan pemeriksaan radiologi untuk menunjang pemeriksaan lebih lanjut / penegakan diagnosa lain

### Use-case 4: Other Department Order

{==

TO DO: USE CASE DIAGRAM

==}

A doctor may refer a patient to another department when the patient's condition requires treatment from multiple specialties. This ensures comprehensive care for complex health issues, involving specialists from relevant fields to provide a coordinated and accurate treatment plan for the patient.

### Use-case 5: Pharmacy Order

{==

TO DO: USE CASE DIAGRAM

==}

A doctor orders medications from the pharmacy for a patient to ensure they receive the correct drugs for their treatment.

### Use-case 6: Viewing Ancillary Results

{==

TO DO: USE CASE DIAGRAM

==}

Doctors can view ancillary services such as radiology, laboratory, and pharmacy in one centralized panel.

### Use-case 7: Viewing Prescriptions

{==

TO DO: USE CASE DIAGRAM

==}

Doctors can view the history of prescribed medications and monitor the progress of medication requests.


## Sub-Scenario 4.3: Medical Assesment Record

Referrals for inter-specialist consultations

: !!! Example "Use Case List"

        1. [Use Case 1: Request Berkas Resume Medis](#use-case-1-request-berkas-resume-medis)

### Use-case 1: Request Berkas Resume Medis

{==

TO DO: USE CASE DIAGRAM

==}

## Sub-Scenario 4.4: Prescriptions and medication history

: !!! Example "Use Case List"

        1. [Use Case 1: Create Recipe Online](#use-case-1-create-recipe-online)
        2. [Use Case 2: Concoction Request](#use-case-2-concoction-request)
        3. [Use Case 3: Create Recipe Online](#use-case-3-prescription-monitoring)
        4. [Use Case 4: Concoction Request](#use-case-4-view-medication-history)

### Use-case 1: Create Recipe Online

{==

TO DO: USE CASE DIAGRAM

==}

### Use-case 2: Concoction Request

{==

TO DO: USE CASE DIAGRAM

==}

### Use-case 3: Prescription Monitoring

{==

TO DO: USE CASE DIAGRAM

==}

### Use-case 4: View medication history

{==

TO DO: USE CASE DIAGRAM

==}

## Sub-Scenario 4.5: Lab and Test Result

: !!! Example "Use Case List"

        1. [Use Case 1: Laboratorium order](#use-case-1-laboratorium-request)
        2. [Use Case 2: View Laboratorium result](#use-case-2-view-laboratorium-result)

### Use-case 1: Laboratorium order

{==

TO DO: USE CASE DIAGRAM

==}

### Use-case 2: View laboratorium result

: !!! Example "Use Case List"

        1. [Use Case 1: Request Berkas Resume Medis](#use-case-1-request-berkas-resume-medis)

{==

TO DO: USE CASE DIAGRAM

==}

## Sub-Scenario 4.6: Radiology Images

: !!! Example "Use Case List"

        1. [Use Case 1: Radiology order](#use-case-1-radiology-request)
        2. [Use Case 2: View radiology result](#use-case-2-view-radiology-result)

### Use-case 1: Radiology order

{==

TO DO: USE CASE DIAGRAM

==}

### Use-case 2: View radiology result

{==

TO DO: USE CASE DIAGRAM

==}

## Sub-Scenario 4.7: Nursing & Other Assessment

: !!! Example "Use Case List"

        1. [Use Case 1: Catatan Terintegrasi](#use-case-1-catatan-terintegrasi)
        1. [Use Case 2: Monitoring Nyeri Pasien](#use-case-2-monitoring-nyeri-pasien)
        1. [Use Case 3: Daftar Pengobatan](#use-case-3-daftar-pengobatan)
        1. [Use Case 4: Laporan Pembedahan](#use-case-4-laporan-pembedahan)
        1. [Use Case 5: Pengkajian Hemodialisa](#use-case-5-pengkajian-hemodialisa)
        1. [Use Case 6: Pengkajian Dewasa Geriatri RJ](#use-case-6-pengkajian-dewasa-geriatri-rj)
        1. [Use Case 7: Pengkajian MCU](#use-case-7-pengkajian-mcu)
        1. [Use Case 8: Catatan Keperawatan](#use-case-8-catatan-keperawatan)
        1. [Use Case 9: Observasi Keadaan Khusus](#use-case-9-observasi-keadaan-khusus)
        1. [Use Case 10: Resiko Jatuh RI](#use-case-10-resiko-jatuh-ri)
        1. [Use Case 11: Resume Keperawatan](#use-case-11-resume-keperawatan)
        1. [Use Case 12: Monitoring Nyeri Pasien](#use-case-2-monitoring-nyeri-pasien)
        1. [Use Case 13: Catatan Sedasi/Anastesi](#use-case-13-catatan-sedasianastesi)
        1. [Use Case 14: Pengkajian Awal Pasien](#use-case-14-pengkajian-awal-pasien)
        1. [Use Case 15: Grafik Harian Pasien](#use-case-15-grafik-harian-pasien)
        1. [Use Case 16: Pengkajian ICU](#use-case-16-pengkajian-icu)
        1. [Use Case 17: Pengkajian Isolasi dan Penyakit Menular](#use-case-17-pengkajian-isolasi-dan-penyakit-menular)
        1. [Use Case 18: Pengkajian Restrain](#use-case-18-pengkajian-restrain)
        1. [Use Case 19: Laporan Operasi](#use-case-19-laporan-operasi)
        1. [Use Case 20: Pengkajian Populasi Khusus](#use-case-20-pengkajian-populasi-khusus)
        1. [Use Case 21: Pengkajian Gizi Lanjut](#use-case-21-pengkajian-gizi-lanjut)
        1. [Use Case 22: Pengkajian End Of Life](#use-case-22-pengkajian-end-of-life)
        1. [Use Case 23: Pengkajian Pasien Gangguan Jiwa](#use-case-23-pengkajian-pasien-gangguan-jiwa)
        1. [Use Case 24: Pengkajian head to toe](#use-case-24-pengkajian-head-to-toe)
        1. [Use Case 25: Pengkajian ODC](#use-case-25-pengkajian-odc)
        1. [Use Case 26: Barthel Index](#use-case-26-barthel-index)
        1. [Use Case 27: Pengkajian Pasien Pulang Terintegrasi](#use-case-1-request-berkas-resume-medis)

### Use-case 1: Catatan Terintegrasi

{==

TO DO: USE CASE DIAGRAM

==}

### Use-case 2: Monitoring Nyeri Pasien

{==

TO DO: USE CASE DIAGRAM

==}

### Use-case 3: Daftar Pengobatan

{==

TO DO: USE CASE DIAGRAM

==}

### Use-case 4: Laporan Pembedahan

{==

TO DO: USE CASE DIAGRAM

==}

### Use-case 5: Pengkajian Hemodialisa

{==

TO DO: USE CASE DIAGRAM

==}

### Use-case 6: Pengkajian Dewasa Geriatri RJ

{==

TO DO: USE CASE DIAGRAM

==}

### Use-case 7: Pengkajian MCU

{==

TO DO: USE CASE DIAGRAM

==}

### Use-case 8: Catatan Keperawatan

{==

TO DO: USE CASE DIAGRAM

==}

### Use-case 9: Observasi Keadaan Khusus

{==

TO DO: USE CASE DIAGRAM

==}

### Use-case 10: Resiko Jatuh RI

{==

TO DO: USE CASE DIAGRAM

==}

### Use-case 11: Resume Keperawatan

{==

TO DO: USE CASE DIAGRAM

==}

### Use-case 12: Monitoring Nyeri Pasien

{==

TO DO: USE CASE DIAGRAM

==}

### Use-case 13: Catatan Sedasi/Anastesi

{==

TO DO: USE CASE DIAGRAM

==}

### Use-case 14: Pengkajian Awal Pasien

{==

TO DO: USE CASE DIAGRAM

==}

### Use-case 15: Grafik Harian Pasien

{==

TO DO: USE CASE DIAGRAM

==}

### Use-case 16: Pengkajian ICU

{==

TO DO: USE CASE DIAGRAM

==}

### Use-case 17: Pengkajian Isolasi dan Penyakit Menular

{==

TO DO: USE CASE DIAGRAM

==}

### Use-case 18: Pengkajian Restrain

{==

TO DO: USE CASE DIAGRAM

==}

### Use-case 19: Laporan Operasi

{==

TO DO: USE CASE DIAGRAM

==}

### Use-case 20: Pengkajian Populasi Khusus

{==

TO DO: USE CASE DIAGRAM

==}

### Use-case 21: Pengkajian Gizi Lanjut

{==

TO DO: USE CASE DIAGRAM

==}

### Use-case 22: Pengkajian End Of Life

{==

TO DO: USE CASE DIAGRAM

==}

### Use-case 23: Pengkajian Pasien Gangguan Jiwa

{==

TO DO: USE CASE DIAGRAM

==}

### Use-case 24: Pengkajian Head to Toe

{==

TO DO: USE CASE DIAGRAM

==}

### Use-case 25: Pengkajian ODC

{==

TO DO: USE CASE DIAGRAM

==}

### Use-case 26: Barthel Index

{==

TO DO: USE CASE DIAGRAM

==}

### Use-case 27: Pengkajian Pasien Pulang Terintegrasi

{==

TO DO: USE CASE DIAGRAM

==}

## Sub-Scenario 4.8: Progress Notes
to be decided

: !!! Example "Use Case List"

        1. [Use Case 1: #](#sub-scenario-48-progress-notes)

{==

TO DO: USE CASE DIAGRAM

==}

## Sub-Scenario 4.9: Triage Modules
 
Pencatatan kegawatan darurat pasien

: !!! Example "Use Case List"

        1. [Use Case 1: Pengkajian Pasien UGD](#use-case-1-pengkajian-pasien-ugd)

### Use-case 1: Pengkajian Pasien UGD

{==

TO DO: USE CASE DIAGRAM

==}

## Sub-Scenario 4.10: Patient Consent Management

: !!! Example "Use Case List"

        1. [Use Case 1: Patient Consent Management](#use-case-1-patient-consent-management)

### Use-case 1: Patient Consent Management

{==

TO DO: USE CASE DIAGRAM

==}

## Sub-Scenario 4.11: Certificate Management

: !!! Example "Use Case List"

        1. [Use Case 1: Surat Keterangan Lahir](#use-case-1-surat-keterangan-lahir)
        1. [Use Case 2: Surat Keterangan Sehat](#use-case-2-surat-keterangan-sehat)
        1. [Use Case 3: Surat Keterangan Buta warna](#use-case-3-surat-keterangan-buta-warna)
        1. [Use Case 4: Surat Keterangan Sakit](#use-case-4-surat-keterangan-sakit)
        1. [Use Case 5: Surat Keterangan Rawat](#use-case-5-surat-keterangan-rawat)

### Use-case 1: Surat Keterangan Lahir

{==

TO DO: USE CASE DIAGRAM

==}

### Use-case 2: Surat Keterangan Sehat

{==

TO DO: USE CASE DIAGRAM

==}

### Use-case 3: Surat Keterangan Buta warna

{==

TO DO: USE CASE DIAGRAM

==}

### Use-case 4: Surat Keterangan Sakit

{==

TO DO: USE CASE DIAGRAM

==}

### Use-case 5: Surat Keterangan Rawat

{==

TO DO: USE CASE DIAGRAM

==}

## Sub-Scenario 4.12: EMR Reporting System

: !!! Example "Use Case List"

        1. [Use Case 1: EMR Report](#use-case-1-emr-report)
        2. [Use Case 2: PPI Report](#use-case-2-ppi-report)

### use-case 1: EMR Report
### use-case 2: PPI Report

[various medical tests]: #sub-scenario-47-nursing-other-assessment

## Sub-Scenario 4.13: Inter-specialist consultations

: !!! Example "Use Case List"

        1. [Use Case 1: Inter-specialist consultations](#use-case-1-inter-specialist-consultations)

### use-case 1: Inter-specialist consultations