unit ResStringsU;

interface

ResourceString
  C_ErrorFileNotFound   = '�� ������ ��� ������� ';
  C_ErrorSavingSettings = '�������� ��� ������ ��������';
  C_ErrorCanNotCreateTmpDir = '�������� ��� ���������� ���������� ��������� ';
  C_WarningDeleteFiles = '����� �������� ��� ��� �������� ��� ������� ?';
  C_WarningSureDeleteFiles = '����� ���� �������� ��� ��� �������� ��� ������� ?';
  C_ErrorFileNotFoundInDirectories = '��� ������� �� ������ ����� ���������� ����������';
  C_CanNotReadFormFile = '��� ����� �� ������� �������� ��� �� ������ ����' + #13 + #10 +
                         '�� ������ ���� ������ �� �������������� ��� ���� ���������';
  C_SongCodeDoesNotExist = '� ������� ���������� ��� ������� ��� ������';
  C_ArtistCodeDoesNotExist = '� ������� ��� ����������� ��� ������� ��� ������ ���������� ��� �������';
  C_WrongStyleCode = '����� ������� ������ ��������';
  C_WrongSubjectCode = '����� ������� �������';
  C_WrongCDCode = '����� ������� ������';
  C_NoArtistEntered = '��� ���� ����� �����������';
  C_NoTitleEntered = '��� ���� ����� ������ ����������';
  C_CanNotDeleteCD = '��� ����� �� �������� �� �������� ��� CD �����' + #13 +
                     '����� �������� ��������� ��� ����������� �� ����';
  C_CanNotDeleteStyle = '��� ����� �� �������� ���� �� �����'+ #13 +
                        '����� �������� ��������� ��� ����������� �� ����';
  C_CanNotDeleteSubject = '��� ����� �� �������� ���� �� ����'+ #13 +
                          '����� �������� ��������� ��� ����������� �� ����';
  C_ErrorSavingToDatabase = '������������� �������� ��� ������ ��� ��������� ��� ���� ���������';
  C_ErrorSavingMPegInfo = 'Error saving mpeg info to file';
  C_SureDeleteRecord = '����� �������� ��� �� �������� ����� ��� ������� ?';
  C_CodeMustBeUnique = '�� ����� ������� ������ �� ���� ��� �������� ������';
  C_CDTitleMustHaveValue = '�� ����� ������ ������ ������ �� ���� ��������';
  C_NoSearchDirsDefined = '��� ������� ���������� ��� �� search Directories';
  C_CanNotLoadPeriodsFile = '��� ����� �� ������� �� ������ �� ��� ���������';
  C_FilterFrom    = ' , ��� :';
  C_FilterTo      = ' ��� :';
  C_FilterSubject = ' , ���� :';
  C_FilterOpener  = ' , Opener';
  C_Songs         = '��������� : ';
  C_ProblemLoadingFile = '�������� ��� ������� ��� ������� : ';
  C_ProblemSavingFile  = '�������� ��� ������ ��� ������� : ';
  C_FileExistsInDB = '�� ������ ���� ������� ���� database';
  C_SongsDir = 'Songs Directory';
  C_FilePacksDir = 'Filepacks Directory';
  C_SureDeleteFile = '������ �� ������� �� ������ : ';
  C_CanNotDeleteFile = '��� ������� �� ����� �� ������ : ';
  C_CreateFilesPack =  '���������� ���� ������� �������';
  C_FilesPackName   = '����� �������';
  C_FileExists = '�� ������ %s ��� �������';
  C_ChangeName = '������ ��������';
  C_NewFilesPackName = '��� ����� �������';
  C_ErrorRenamingFile = 'Error Renaming File';
  C_Registered = 'Registered';
  C_Unregistered = 'Unregistered';
  C_Song         = '��������';
  C_Jingle       = 'Jingle';
  C_Spot         = '����';
  C_TimeAnnounce = '���������� ����';
  C_News         = '��������';
  C_HardDisc     = '������ ������� ������';
  C_NewProgram   = '��� ���������';
  C_Error        = '��������';
  C_Warning      = '�������������';
  C_Delete       = '�����';
  C_Unloaded     = '��������';
  C_Ready        = '������';
  C_Loading      = '��������';
  C_Cueing       = '����������';
  C_Waiting      = '���������';
  C_Playing      = '������';
  C_Paused       = '�� �����';
  C_Unloading    = '����������';
  C_FadingOut    = 'Fading';
  C_Ended        = '��������';
  C_ErrorLoadingWeekProgram = '�������� ��� ������� ��� ������� ������������ ������������';
  C_ErrorSavingWeekProgram = '�������� ��� ������ ��� ������� ������������ ������������';
  C_HourExists   = '� ��� ���� ��� ������� ';
  C_PlaylistDoesNotExist = '�� PlayList "%s" ����� : "%s" ��� : "%s" ��� �������.';
  C_DeleteHourFromProgram = '�������� ��� "%s" ��� �� ��������� ��� ������ ? ';
  C_ReplaceProgrammedTime = '������� ��� ��� ���������������� ��� "%s" ��� ��� "%s" (%s)'
                             + #13 + '�� ����� ������������� ?';
  C_PlaylistsExistOnHardDisc = '�� ���������������� playlist �������� ���� �����.';
  C_ErrorEnumSoundCards = '�������� �������� ������ ����';
  C_DataServerDir = '��������� Data ��� server';
  C_TrafficDir    = '��������� Traffic';
  C_ProgramsDir   = '��������� programs';
  C_PlayListsDir  = '��������� PlayList';
  C_AudioDir      = '��������� ������� ����';
  C_CategoryDir   = '��������� ������� ����������';
  C_NoCategoryFiles = '�������� ��� ������� ��� ������� ����������';
  C_Days1         = ' ������';
  C_Year1         = '������ ';
  C_ServerNetDir  = 'NetDir ��� Server';
  C_NewProgramCheck = '������� ��� ��� ���������';
  C_ProgramsNotExist = '��� �������� �����������';
  C_CheckForSpots = '������� ��� �����������';
  C_DisabledSong = '***** �������������� �� �������� : ';
  C_SpotsWaiting = '��� : %s Spots %d ���������� %d';
  C_CanNotSaveSongInfo = '����� �� �������� ���� ��� ������� �� ���� ����������� ��� �� ������� ��� ���������� %s';
  C_CanNotFindSong = '��� ������� �� ��� �� �������� ��� �� ���� ����������� ��� �� ������� ��� ���������� %s';
  C_ErrorProcessingFilteredSong = '������������� �������� ���� ����������� ��� ����������';
  C_CanNotFindFilteredSong = '��� ����� �� ������������� ��������. Break=%d %s';
  C_DaysSpots = '���� ������ ';
  C_CanNotSaveInfo = '��� ����� �� ���� �������� ��� �����';
  C_DatabaseInEditMode = '� Database ����� �� ���������� edit';
  C_CanNotDeleteCategory = '��� �� ������� ��� ��������� ���� ������ �� ������� ���� ��� �������� ���';
  C_ProblemSavingDay = '�������� ��� ������ ��������� ��� ������';
  C_ReplaceProgramWeek = '����� �������� ��� ��� ������������� ��� ��������� ��������� �� �� ������ %s ?';
  C_ReplaceProgramDay  = '����� �������� ��� ��� ������������� ��� ������ %s �� �� ������ %s ?';

implementation

end.
 