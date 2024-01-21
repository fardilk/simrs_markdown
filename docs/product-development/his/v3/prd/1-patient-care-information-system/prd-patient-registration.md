# Product Requirement Documentation: Patient Registration

## User Requirement List

: !!! Info "User requirement"

        1. [PRD 1.1.1: New Patient Registration](#user-requirement-1-new-patient-registration)
        2. [PRD 1.1.2: Old Patient Registration](#user-requirement-2-old-patient-registration)
        3. [PRD 1.1.3: New Born Registration](#user-requirement-3-new-born-registration) 
        4. [PRD 1.1.3: Patient X Registration](#user-requirement-4-patient-x-registration) 

### Product requirement 1: New Patient Registration

#### Executive Summary
The New Patient Registration module is designed to facilitate the registration process for new patients in healthcare services. This module will be a critical component of our broader healthcare information system which will facilitate the new patient registration. 

Here we classify the new patient as two:

- Patient who has IHS_ID
- Patient who dont have IHS_ID

#### Use Cases
According to the use cases, there are several scenarios that will be catered to describe [new patient registration](#user-requirement-1-new-patient-registration). See the link below:

[:octicons-arrow-right-24: Use cases: patient registration](https://drive.google.com/file/d/1dut69YOdrAE-vR0XN53jHkMJ9V8sVhwh/view?usp=drive_link){:target="_blank"}

[:octicons-arrow-right-24: Use cases: patient type](https://drive.google.com/file/d/1LtbP8BWLmv4BWN3wm5iRpK81DcNBrZU4/view?usp=sharing){:target="_blank"}

[:octicons-arrow-right-24: Mapping services to FHIR](https://drive.google.com/file/d/18hNPJ0Kafnr7G9OlwrsgfPIQD-LV9pZI/view?usp=drive_link){:target="_blank"}


#### User Persona
Below is the user persona who interacts with the registration process (new patient).

| User Persona   | Jobs to be done                      |
| ----------- | ------------------------------------ |
| `Admission`     | The actor responsible for registering patients |
| `Patient`       | The actor who comes to the hospital and then registers the patient|
| `Clinic nurse`  | The actor (nurse) who need to be aware when there are special notes about the patient during registration |
| `Doctor Penanggung Jawab Pasien`  | The actor (doctor) who will receive patients for subsequent medical treatment |


#### Key User Flow

[:octicons-arrow-right-24: Patient Registration Flow](https://drive.google.com/file/d/15EcJZK6OrFXuZvrWLZGPdZEm8Xq_iDtY/view?usp=drive_link){:target="_blank"}

#### User story & UAC

##### User Story-1: Search Patient by speficic criteria
: !!! Note "User Story"

        As an admissions officer, I need the ability to search for patients using specific criteria: Name, National Identity Number (NIK), IHS_ID, Medical Record (MedRec), and Date of Birth. This will enable me to find patients more precisely and accurately.

##### Acceptance criteria

Common search:

- Admin bagian pendaftaran bisa menggunakan search box yang tersedia
- Admin bagian pendaftaran bisa mengisikan: nama, NIK, MedRec & IHS_ID
- Saat Admin bagian pendaftaran mengisikan filternya dan hit button `Cari Pasien` maka sistem akan menampilkan (`query`) sesuai dengan kriteria data yang dientry
- Jika kriteria match data pasien ditampilkan, dan jika kriteria tidak match data pasien tidak ditemukan (notifikasi: "nama_pasien" tidak ditemukan. Gunakan **Advance Search** atau **Registrasi Baru** )
- Klik **Advance Search** tampil panel [:octicons-arrow-right-24: advance search](https://www.figma.com/file/UWelJedpg5JgtLV8xdQgoH/HIS-design-new---primaya?type=design&node-id=11143-9401&mode=design&t=qqHaEyyf3pQ123m3-4){:target="_blank"}
- Klik **Registrasi Baru** diarahkan ke [:octicons-arrow-right-24: form registrasi pasien baru](https://www.figma.com/file/UWelJedpg5JgtLV8xdQgoH/HIS-design-new---primaya?type=design&node-id=11194-49795&mode=design&t=qqHaEyyf3pQ123m3-4){:target="_blank"}

Advanced search:

- Admin bagian pendaftaran bisa menggunakan advanced search box yang tersedia
- Admin bagian pendaftaran bisa mengisikan parameter tambahan: RM, tanggal lahir, NO HP, dan alamat
- Saat Admin bagian pendaftaran mengisikan filternya dan hit button `Cari Pasien` maka sistem akan menampilkan (`query`) sesuai dengan kriteria data yang dientry
- Jika kriteria match data pasien ditampilkan, dan jika kriteria tidak match data pasien tidak ditemukan (notifikasi: "nama_pasien" tidak ditemukan. Gunakan **Advance Search** atau **Registrasi Baru** )
- Klik **Advance Search** tampil panel [:octicons-arrow-right-24: advance search](https://www.figma.com/file/UWelJedpg5JgtLV8xdQgoH/HIS-design-new---primaya?type=design&node-id=11143-9401&mode=design&t=qqHaEyyf3pQ123m3-4){:target="_blank"}
- Klik **Registrasi Baru** diarahkan ke [:octicons-arrow-right-24: form registrasi pasien baru](https://www.figma.com/file/UWelJedpg5JgtLV8xdQgoH/HIS-design-new---primaya?type=design&node-id=11194-49795&mode=design&t=qqHaEyyf3pQ123m3-4){:target="_blank"}


##### User Flow

[:octicons-arrow-right-24: Search patient flow](https://drive.google.com/file/d/1H_Ah01Za4IFafTa3msKQHeYoCW1ZOXnG/view){:target="_blank"}


##### User Story 2: Register Patients who have IHS_ID

: !!! Note "User Story"

        As an admission officer, I want to register patients, who have an IHS to the hospital's healthcare facility, so that they can continue treatment according to their needs

##### User Acceptance Criteria: 
- Admin bagian pendaftaran bisa klik [form pendaftaran baru](https://www.figma.com/file/UWelJedpg5JgtLV8xdQgoH/HIS-design-new---primaya?type=design&node-id=9403-125208&mode=design&t=qqHaEyyf3pQ123m3-4){:target="_blank"}
- Admin bagian pendaftaran bisa menemukan field `Get IHS_ID` lalu isi dengan NIK
- Admin klik button `GET IHS ID` 
- Untuk pasien yang sudah memiliki `IHS_ID` maka sistem akan terima response JSON dari SatuSehat yang mencakup: nama, birthday, IHS ID, no telp, gender, dan alamat.
- Selanjutnya lengkapi form yang masih kosong, lalu klik submit
- Ketika semua field terisi dengan benar dan disubmit maka sistem akan membuatkan pasien baru (ditandai dengan terbuatnya MedRec baru)


##### User Flow
[:octicons-arrow-right-24: Register Patients who have IHS_ID](https://drive.google.com/file/d/12K8knuOoSgAHs0Bt0iPAhWVg-ByW9A9w/view?usp=sharing){:target="_blank"}

[:octicons-arrow-right-24: Sequence Diagram get IHS ID](https://drive.google.com/file/d/1dF2EheSFlsp-B9MCqffSxydAqVYQuIMP/view?usp=sharing){:target="_blank"}

[:octicons-arrow-right-24: Sequence Diagram daftar dengan IHS ID](https://drive.google.com/file/d/1Wjx-YQzWJQ9sKgCmZhybT-T_fmGEfHMo/view?usp=sharing){:target="_blank"}


##### User Story #3: Register Patients who dont have IHS_ID
: !!! Note "User Story"

          As an admission officer, I want to register patients, who don't have an IHS to the hospital's healthcare facility, so that they can continue treatment according to their needs

##### User Acceptance Criteria: 
- Admin bagian pendaftaran bisa klik [form pendaftaran baru](https://www.figma.com/file/UWelJedpg5JgtLV8xdQgoH/HIS-design-new---primaya?type=design&node-id=9403-125208&mode=design&t=qqHaEyyf3pQ123m3-4){:target="_blank"}
- Admin bagian pendaftaran bisa menemukan field `Get IHS_ID` lalu isi dengan NIK
- Admin klik button `GET IHS ID` 
- Untuk pasien yang belum memiliki `IHS_ID` maka sistem memberikan notifikasi (`Patient not found`).
- Selanjutnya lengkapi form yang masih kosong, lalu klik submit
- Ketika semua field terisi dengan benar dan disubmit maka sistem akan membuatkan pasien baru (ditandai dengan terbuatnya MedRec baru)

: !!! Note "WNA Registration"

        Untuk warga negara asing yang mendaftar dengan KITAP/KITAS/Passport tidak post ke IHS ID. Melainkan mereka perlu melakukan pendaftaran secara manual

#### User Flow
[:octicons-arrow-right-24: Register Patients who dont have IHS_ID ](https://drive.google.com/file/d/1H_Ah01Za4IFafTa3msKQHeYoCW1ZOXnG/view){:target="_blank"}

#### UI/UX

### User requirement 2: Old Patient Registration
[:octicons-arrow-right-24: Old Patient Registration](https://drive.google.com/file/d/1azsBwbfYnYpbR679DiKRjTjb_GAQCnnv/view?usp=sharing){:target="_blank"}




### User requirement 3: New Born Registration
### User requirement 4: Patient X Registration
