unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Button1: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
    Procedure FormActivate(Sender: TObject); //my
    Procedure ComboBox1KeyPress(Sender: TObject; var Key: Char); //my2
    Procedure ComboBox1Click(Sender: TObject); //my3
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

Procedure TForm1.FormActivate(Sender: TObject);
begin
  ComboBox1.SetFocus;
end;

// Обработка события нажатия Enter и проверка на повторение
Procedure TForm1.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and (ComboBox1.Items.IndexOf(ComboBox1.Text) = -1)  then  //Если нажата клавиша Enter то...
  begin
    ComboBox1.Items.Add(ComboBox1.Text);
    ComboBox1.Text := '';
  end;
end;


Procedure TForm1.ComboBox1Click(Sender: TObject);
var
  oldString, newString, checkString : string;
  i, num  : integer;
begin
  Memo2.Clear;
  num := ComboBox1.ItemIndex; //номер выбранной строки
  oldString := ComboBox1.Items[num]; //занесение строки в oldString
  for i := 1 to Length(oldString) do //проход по всей строке
    begin
    if (oldString[i] <> ' ') then //добавление символов в проверочную строку
      begin
        checkString := checkString + oldString[i];
        if oldString[i+1] = ' ' then //если следующий символ пробел
          begin
            if StrToInt(checkString) mod 2 = 0 then //провекрка числа на /2
              newString := newString + ' ' + checkString
          end;
      end;
    if (oldString[i] = ' ') then checkString := ''; //обнуление строки
    end;
  Memo2.Lines.Add('Исходная строка: ');
  Memo2.Lines.Add(oldString);
  Memo2.Lines.Add(' ');
  Memo2.Lines.Add('Строка четных чисел: ');
  Memo2.Lines.Add(newString);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Memo1.Clear;
  Memo1.Lines.Add('1 - Введите строку состоящую из чисел в');
  Memo1.Lines.Add('     поле "Введите строку"');
  Memo1.Lines.Add('2 - Нажмите Enter для добавления строки.');
  Memo1.Lines.Add('3 - Выберите строку, чтобы найти четные числа.');
  Memo1.Lines.Add('Пример строки: 22 33 2 0 99 3')

end;


end.
