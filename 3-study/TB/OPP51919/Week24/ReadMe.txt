How to use the standard folders
=========================================================================================================
(1) Copy source data into the "import" folder.  
The "import" folder should be owned by a system type user-ID (i.e., by a non-user), and 
this user-ID should  have "modify" access.   
All true users of CDS should have "write" access, not "modify".
This allows reading/writing files, but not deleting files from the "import" folder.

After copying a file to this folder, 
the file ownership also needs to be changed to the system user-ID, 
otherwise the file owner is able to delete the file
inspite of not having modify access to the folder.

(2)  Programs and scripts that transform data should be stored in "jobs", 
along with log files, etc.  If the data in "import" are "limited datasets",
then a program or script should be written to replace visit dates with relative days
when the dataset is copied from "import" to "raw".



Purpose of folders
==========================================================================================================
adam    -- Analysis datasets (creadted  by programs in "jobs")
fmt     -- Format catalogs, datasets to create formats, ODS templates, etc.
import  -- Source data.  Users should be able to write, but not delete from here.
jobs    -- Data processing programs
pkpd    -- Work area for PK/PD modelers and analysts
publish -- Outputs compiled into a format that is ready for publication.
raw     -- Copies of source data with visit dates replaced by relative days, standard file format 
           and standard STUDYID, SUBJID, and VISIT variables.
sdtm    -- Data mapped to the CDISC SDTM.
stat    -- Location to write output datasets with statistics (e.g., summary stats, p-value, etc.)
           Helpful to facilitate graphing.
tlg     -- Location for table, listing & graph programs, plus outputs.
