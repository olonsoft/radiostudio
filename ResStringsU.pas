unit ResStringsU;

interface

ResourceString
  C_ErrorFileNotFound   = 'Το αρχείο δεν βρέθηκε ';
  C_ErrorSavingSettings = 'Πρόβλημα στο σώσιμο επιλογών';
  C_ErrorCanNotCreateTmpDir = 'Πρόβλημα στη δημιουργία προσωρινού καταλόγού ';
  C_WarningDeleteFiles = 'Είσαι σίγουρος για την διαγραφή των αρχείων ?';
  C_WarningSureDeleteFiles = 'Είσαι ΠΟΛΥ ΣΙΓΟΥΡΟΣ για την διαγραφή των αρχείων ?';
  C_ErrorFileNotFoundInDirectories = 'Δεν βρέθηκε το αρχείο στους ορισμένους καταλόγους';
  C_CanNotReadFormFile = 'Δεν μπορώ να διαβάσω στοιχεία από το αρχείο αυτό' + #13 + #10 +
                         'Το αρχείο αυτό μπορεί να χρησιμοποείται από άλλο πρόγραμμα';
  C_SongCodeDoesNotExist = 'Ο κωδικός τραγουδιού δεν υπάρχει στο αρχείο';
  C_ArtistCodeDoesNotExist = 'Ο κωδικός του τραγουδιστή που υπάρχει στο αρχείο τραγουδιών δεν υπάρχει';
  C_WrongStyleCode = 'Λάθος κωδικός είδους μουσικής';
  C_WrongSubjectCode = 'Λάθος κωδικός θέματος';
  C_WrongCDCode = 'Λάθος κωδικός δίσκου';
  C_NoArtistEntered = 'Δεν έχει δοθεί καλλιτέχνης';
  C_NoTitleEntered = 'Δεν έχει δοθεί τίτλος τραγουδιού';
  C_CanNotDeleteCD = 'Δεν μπορώ να διαγράψω τα στοιχεία του CD αυτού' + #13 +
                     'γιατί υπάρχουν τραγούδια που αναφέρονται σε αυτό';
  C_CanNotDeleteStyle = 'Δεν μπορώ να διαγράψω αυτό το είδος'+ #13 +
                        'γιατί υπάρχουν τραγούδια που αναφέρονται σε αυτό';
  C_CanNotDeleteSubject = 'Δεν μπορώ να διαγράψω αυτό το θέμα'+ #13 +
                          'γιατί υπάρχουν τραγούδια που αναφέρονται σε αυτό';
  C_ErrorSavingToDatabase = 'Παρουσιάστηκε πρόβλημα στο σώσιμο των στοιχείων στη βάση δεδομένων';
  C_ErrorSavingMPegInfo = 'Error saving mpeg info to file';
  C_SureDeleteRecord = 'Είσαι σίγουρος για τη διαγραφή αυτής της εγραφής ?';
  C_CodeMustBeUnique = 'Το πεδίο κωδικός πρέπει να έχει ένα μοναδικό αριθμό';
  C_CDTitleMustHaveValue = 'Το πεδίο Τίτλος δίσκου πρέπει να έχει στοιχεία';
  C_NoSearchDirsDefined = 'Δεν υπάρχει πληροφορία για τα search Directories';
  C_CanNotLoadPeriodsFile = 'Δεν μπορώ να φορτώσω το αρχείο με τις περιόδους';
  C_FilterFrom    = ' , Από :';
  C_FilterTo      = ' Έως :';
  C_FilterSubject = ' , Θέμα :';
  C_FilterOpener  = ' , Opener';
  C_Songs         = 'Τραγούδια : ';
  C_ProblemLoadingFile = 'Πρόβλημα στο φόρτωμα του αρχείου : ';
  C_ProblemSavingFile  = 'Πρόβλημα στο σώσιμο του αρχείου : ';
  C_FileExistsInDB = 'Το αρχείο αυτό υπάρχει στην database';
  C_SongsDir = 'Songs Directory';
  C_FilePacksDir = 'Filepacks Directory';
  C_SureDeleteFile = 'Θέλεις να σβήσεις το αρχείο : ';
  C_CanNotDeleteFile = 'Δεν μπόρεσα να σβήσω το αρχείο : ';
  C_CreateFilesPack =  'Δημιουργία νέου πακέτου αρχείων';
  C_FilesPackName   = 'Όνομα πακέτου';
  C_FileExists = 'Το αρχείο %s ήδη υπάρχει';
  C_ChangeName = 'Αλλαγή ονόματος';
  C_NewFilesPackName = 'Νέο όνομα πακέτου';
  C_ErrorRenamingFile = 'Error Renaming File';
  C_Registered = 'Registered';
  C_Unregistered = 'Unregistered';
  C_Song         = 'Τραγούδι';
  C_Jingle       = 'Jingle';
  C_Spot         = 'Σποτ';
  C_TimeAnnounce = 'Ανακοίνωση ώρας';
  C_News         = 'Ειδήσεις';
  C_HardDisc     = 'Αρχείο σκληρού δίσκου';
  C_NewProgram   = 'Νέο πρόγραμμα';
  C_Error        = 'Πρόβλημα';
  C_Warning      = 'Προειδοποίηση';
  C_Delete       = 'Σβήσε';
  C_Unloaded     = 'Αφόρτωτο';
  C_Ready        = 'Έτοιμο';
  C_Loading      = 'Φορτώνει';
  C_Cueing       = 'Προακρόαση';
  C_Waiting      = 'Περιμένει';
  C_Playing      = 'Παίζει';
  C_Paused       = 'Σε παύση';
  C_Unloading    = 'Ξεφορτώνει';
  C_FadingOut    = 'Fading';
  C_Ended        = 'Τελείωσε';
  C_ErrorLoadingWeekProgram = 'Πρόβλημα στο φόρτωμα του αρχείου εβδομαδιαίου προγράμματος';
  C_ErrorSavingWeekProgram = 'Πρόβλημα στο σώσιμο του αρχείου εδβομαδιαίου προγράμματος';
  C_HourExists   = 'Η ώρα αυτή ήδη υπάρχει ';
  C_PlaylistDoesNotExist = 'Το PlayList "%s" Ημέρα : "%s" Ώρα : "%s" Δεν υπάρχει.';
  C_DeleteHourFromProgram = 'Διαγραφή του "%s" από το πρόγραμμα της ημέρας ? ';
  C_ReplaceProgrammedTime = 'Υπάρχει ήδη ώρα προγραμματισμένη την "%s" και ώρα "%s" (%s)'
                             + #13 + 'Να γίνει αντικατάσταση ?';
  C_PlaylistsExistOnHardDisc = 'Τα προγραμματισμένα playlist ΥΠΑΡΧΟΥΝ στον δίσκο.';
  C_ErrorEnumSoundCards = 'Πρόβλημα μέτρησης καρτών ήχου';
  C_DataServerDir = 'Κατάλογος Data του server';
  C_TrafficDir    = 'Κατάλογος Traffic';
  C_ProgramsDir   = 'Κατάλογος programs';
  C_PlayListsDir  = 'Κατάλογος PlayList';
  C_AudioDir      = 'Κατάλογος αρχείων ήχου';
  C_CategoryDir   = 'Κατάλογος αρχείων κατηγορίας';
  C_NoCategoryFiles = 'Πρόβλημα στο φόρτωμα του αρχείου κατηγοριών';
  C_Days1         = ' Ημέρες';
  C_Year1         = 'Χρόνος ';
  C_ServerNetDir  = 'NetDir του Server';
  C_NewProgramCheck = 'Έλεγχος για νέο πρόγραμμα';
  C_ProgramsNotExist = 'Δεν υπάρχουν προγράμματα';
  C_CheckForSpots = 'Έλεγχος για διαφημίσεις';
  C_DisabledSong = '***** Απενεργοποίησα το Τραγούδι : ';
  C_SpotsWaiting = 'Ώρα : %s Spots %d Περιμένουν %d';
  C_CanNotSaveSongInfo = 'Βρήκα το τραγούδι αλλά δεν μπόρεσα να σώσω πληροφορίες για το παίξιμο του τραγουδιού %s';
  C_CanNotFindSong = 'Δεν μπόρεσα να βρω το τραγούδι για να σώσω πληροφορίες για το παίξιμο του τραγουδιού %s';
  C_ErrorProcessingFilteredSong = 'Παρουσιάστηκε πρόβλημα στην επεξεργασία του τραγουδιού';
  C_CanNotFindFilteredSong = 'Δεν βρήκα το φιλτραρισμένο τραγούδι. Break=%d %s';
  C_DaysSpots = 'Σποτ ημέρας ';
  C_CanNotSaveInfo = 'Δεν μπορώ να σώσω στοιχεία στο δίσκο';
  C_DatabaseInEditMode = 'Η Database είναι σε κατάσταστη edit';
  C_CanNotDeleteCategory = 'Για να σβήσεις την κατηγορία αυτή πρέπει να σβήσεις όλες τις εγγραφές της';
  C_ProblemSavingDay = 'Πρόβλημα στο σώσιμο στοιχείων της ημέρας';
  C_ReplaceProgramWeek = 'Είσαι σίγουρος για την αντικατάσταση της τρέχουσας εδβομάδας με το αρχείο %s ?';
  C_ReplaceProgramDay  = 'Είσαι σίγουρος για την αντικατάσταση της ημέρας %s με το αρχείο %s ?';

implementation

end.
 