unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.AppEvnts, Vcl.Menus, IniFiles;

type
  TfrmPrincipal = class(TForm)
    tCargaSRV: TTimer;
    ApplicationEvents1: TApplicationEvents;
    TrayIcon1: TTrayIcon;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    procedure tCargaSRVTimer(Sender: TObject);
    procedure ApplicationEvents1Minimize(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

  CargaSRV, CargaPDV : String;

implementation

{$R *.dfm}

procedure TfrmPrincipal.ApplicationEvents1Minimize(Sender: TObject);
begin
  Self.Hide();
  Self.WindowState  := wsMinimized;
  TrayIcon1.Visible := True;
end;

procedure TfrmPrincipal.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
var
  Ini : TIniFile;
begin
  Self.Hide();
  Self.WindowState := wsMinimized;

  Ini := TIniFile.Create('C:\Cupom System\APP\Reabrir\Reabrir.Ini');
  CargaSRV := Ini.ReadString('GERAL','CargaSRV','');
  CargaPDV := Ini.ReadString('GERAL','CargaPDV','');
end;

procedure TfrmPrincipal.tCargaSRVTimer(Sender: TObject);
begin
  if CargaSRV = '1' then
  begin
    if FindWindow(nil, 'Cupom System - Carga do Servidor') = 0 then
      WinExec(PAnsiChar('C:\Cupom System\APP\CargaSRV\CargaSRV.exe'), SW_NORMAL)
  end;

  if CargaPDV = '1' then
  begin
    if FindWindow(nil, 'Cupom System - Carga do PDV') = 0 then
      WinExec(PAnsiChar('C:\Cupom System\APP\Cargas\Carga.exe'), SW_NORMAL)
  end;
end;

end.
