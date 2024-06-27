unit MyMemMgr;

interface

var
{  GetMemCount: LongInt;
  FreeMemCount: LongInt;
  ReallocMemCount: LongInt; }
  OldMemMgr: TMemoryManager;

implementation

function NewGetMem(Size: Integer): Pointer;
begin
//  Inc(GetMemCount);
  Result := OldMemMgr.GetMem(Size);
end;

function NewFreeMem(P: Pointer): Integer;
begin
//  Inc(FreeMemCount);
  Result := OldMemMgr.FreeMem(P);
end;

function NewReallocMem(P: Pointer; Size: Integer): Pointer;
begin
//  Inc(ReallocMemCount);
  Result := OldMemMgr.ReallocMem(P, Size);
end;

const
  NewMemMgr: TMemoryManager = (
  GetMem: NewGetMem;
  FreeMem: NewFreeMem;
  ReallocMem: NewReallocMem);

procedure SetNewMemMgr;
begin
  GetMemoryManager(OldMemMgr);
  SetMemoryManager(NewMemMgr);
end;

initialization
 if not IsMemoryManagerSet then
   SetNewMemMgr;
end.
