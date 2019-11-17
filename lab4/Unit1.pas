unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    CheckBox1: TCheckBox;
    StringGrid2: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure StringGrid2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  N = 4;
var
  Form1: Tform1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
type
  Tabl = array[1..N, 1..N] of integer;
var
  A: Tabl;
  j,l,i,k: integer;
begin
  if CheckBox1.Checked then
    begin
      Memo1.Clear;
      Memo1.Lines.Add('��� ���������� ���������');
      Memo1.Lines.Add('1) ��������� "����������"');
      Memo1.Lines.Add('2) ���������� �����������');
      Memo1.Lines.Add('3) �������� �������� �������*');
      Memo1.Lines.Add('4) �������� ������������� ����*');
      Memo1.Lines.Add('');
      Memo1.Lines.Add('* - �������������� �����');
      Memo1.Lines.Add('');
    end
  else
    begin
      //���������� ����������
      for i:=1 to N do
        begin
          for k:=1 to N do
              A[k,i] := StrToInt(StringGrid2.Cells[k,i]);
          end;
      //�������� �����������
      j := 1;
      for i:= N downto 1 do
        begin
          l := 1;
          for k:= N downto 1 do
            begin
              StringGrid2.Cells[l,j] := IntToStr(A[k,i]);
              Inc(l);
            end;
            Inc(j);
        end;
    end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  i,k: integer;
begin
     StringGrid2.Cells[0,0] := '������ �';
     for i:=1 to N do
      begin
        StringGrid2.Cells[0, i] := 'i='+IntToStr(i);
        StringGrid2.Cells[i, 0] := 'k='+IntToStr(i);
      end;
      //��������� ���������� �������
      for i:=1 to N do
        for k:=1 to N do
          StringGRid2.Cells[k,i] := IntToStr((i-1)*N+k);
end;

procedure TForm1.StringGrid2Click(Sender: TObject);
begin
    Memo1.Clear;
    Memo1.Lines.Add('������� ������ �� '
    + IntToStr(StringGrid2.Col) + '-�� �������, '
    + IntToStr(StringGrid2.Row) + '-�� ������, '
    + '�� ��������� ' + StringGrid2.Cells[StringGrid2.Col, StringGRid2.Row]);
end;

end.

