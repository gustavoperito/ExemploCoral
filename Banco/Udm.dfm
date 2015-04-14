object DM: TDM
  OldCreateOrder = False
  Left = 788
  Top = 179
  Height = 203
  Width = 211
  object conexao: TSQLConnection
    ConnectionName = 'LOJA'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'Database=C:\Users\user\Desktop\ExemploCoral\Banco\LOJA.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    VendorLib = 'gds32.dll'
    Connected = True
    Left = 56
    Top = 40
  end
  object auxiliar: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 112
    Top = 40
  end
end
