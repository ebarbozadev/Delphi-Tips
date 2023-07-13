unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FMXFormCadastro, Vcl.Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Produtos1: TMenuItem;
    procedure Produtos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Produtos1Click(Sender: TObject);
var
  FMXForm : TFMXCadastro;
begin
  FMXForm := TFMXCadastro.Create(Self);
  try
    FMXForm.ShowModal;
  finally
    FMXForm.Free;
  end;
end;

end.
