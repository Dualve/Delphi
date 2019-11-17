unit Unit1;
//В магазине имеется список поступивших в продажу автомобилей.
//Каждая запись этого списка содержит: марку автомобиля, стоимость,
//расход топлива на 100 км, надежность (число лет безотказной работы),
//комфортность (отличная, хорошая, удовлетворительная).
//Вывести перечень автомобилей, удовлетворяющих требованиям покупателя,
//которые вводятся с клавиатуры в виде некоторого интервала допустимых значений.

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Grids, ExtCtrls;

type
  //Параметры автомобиля
  TAutomobile=record
    Marka: String[30];   //Марка автомобиля
    Price: Integer;      //Цена
    ChargeFuel: Integer; //Расход топлива
    Reliability: Integer;//Надёжность
    Comfort: Integer;    //Комфортность
  end;

  TForm1 = class(TForm)
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Button2: TButton;
    Button3: TButton;
    Button5: TButton;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    Memo1: TMemo;
    Button7: TButton;
    Label20: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit21: TEdit;
    ComboBox21: TComboBox;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Edit32: TEdit;
    Edit33: TEdit;
    Edit31: TEdit;
    ComboBox22: TComboBox;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    StringGrid1: TStringGrid;
    Label11: TLabel;
    Label1: TLabel;
    Button6: TButton;
    BitBtn2: TBitBtn;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure CollectData(var ta:TAutomobile);
    procedure CollectData1(var ta:TAutomobile);
    procedure CollectData2(var ta:TAutomobile);
    procedure File_Open;
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

  fa,fa1:file of TAutomobile; //файл записей
  KolZap:integer = 0; //Количество записей (и номер последней)

implementation

{$R *.dfm}


//Создание формы
procedure TForm1.FormCreate(Sender: TObject);
begin
  //Путь в папку программы
  OpenDialog1.InitialDir := ExtractFilePath(ParamStr(0));
  SaveDialog1.InitialDir := ExtractFilePath(ParamStr(0));
  StringGrid1.Cells[1,0]:='Марка автомобиля';
  StringGrid1.Cells[2,0]:='Цена';
  StringGrid1.Cells[3,0]:='Расх.т.';
  StringGrid1.Cells[4,0]:='Надёжность';
  StringGrid1.Cells[5,0]:='Комфортность';
end;



//Открыть файл и считать данные в StringGrid
procedure TForm1.File_Open;
var
  ta : TAutomobile;
  k : Integer;
begin
  AssignFile(fa,Opendialog1.FileName);
  if FileExists(Opendialog1.FileName) then
  //открытие существующего файла или
  Reset(fa) else Rewrite(fa); //создание нового файла

  KolZap := 0;

  if FileSize(fa)=0 then
  //Если файл пуст - очищаем
  begin
    StringGrid1.RowCount:=2;
    for k:=0 To StringGrid1.ColCount-1 do
    StringGrid1.Cells[k,1]:='';
  end else
  StringGrid1.RowCount:=FileSize(fa)+1; //Кол-во записей - кол-во строк StringGrid1

  while not Eof(fa)do
  begin
    KolZap := KolZap + 1;
    Read(fa, ta);  //чтение записи из файла
    with StringGrid1, ta do
    begin
      //Вставим данные записи в строку StringGrid1
      Cells[1,KolZap] := Marka;
      Cells[2,KolZap] := IntToStr(Price);
      Cells[3,KolZap] := IntToStr(ChargeFuel);
      Cells[4,KolZap] := IntToStr(Reliability);
      Cells[5,KolZap] := ComboBox2.Items[Comfort];
      Cells[0,KolZap] := IntToStr(KolZap);
    end;
  end;
  Button1.Enabled:=True;  //Сделать доступной кнопку "Добавить"
  Button3.Enabled:=False; //Сделать недоступной кнопку "Открыть"
  BitBtn1.Enabled:=True;  //Сделать доступной кнопку "Закрыть"
  Button5.Enabled:=True;  //Сделать доступной кнопку "Сохранить как"
  Panel1.Enabled:=True;   //Сделать доступным поле выборки данных
  Panel2.Enabled:=True;   //Сделать доступным поле ввода и редактирования записей
  Savedialog1.FileName:= Opendialog1.FileName;
end;


//Открыть файл
procedure TForm1.Button3Click(Sender: TObject);
begin
  OpenDialog1.Title := 'Открыть файл...';
  if OpenDialog1.Execute then
  //Открываем и читаем файл
  File_Open;

  Button1.Enabled:=True;
  if KolZap<>0 then
  begin
    Button6.Enabled:=True;
    Button7.Enabled:=True;
  end else
  begin
    Button6.Enabled:=False;
    Button7.Enabled:=False;
  end;
end;


//Создать файл
procedure TForm1.Button2Click(Sender: TObject);
var
  d : Integer;
begin
  OpenDialog1.Title := 'Создание нового файла'; //изменение заголовка окна диалога
  if OpenDialog1.Execute then
  begin //выполнение стандартного диалога выбора имени файла
    //Создаём файл
    AssignFile(fa,Opendialog1.FileName);
    Rewrite(fa); //создание нового файла

    StringGrid1.RowCount:=2;
    //Очищаем последнюю строку из StringGrid
    //Удалять нельзя - теряется фиксированная строка
    for d:=0 To StringGrid1.ColCount-1 do
    StringGrid1.Cells[d,1]:='';

    Button3.Enabled:=False; //Сделать недоступной кнопку "Открыть"
    BitBtn1.Enabled:=True;  //Сделать доступной кнопку "Закрыть"
    Button5.Enabled:=True;  //Сделать доступной кнопку "Сохранить как"

    Button1.Enabled:=True;
    Button6.Enabled:=False;
    Button7.Enabled:=False;
  end;
end;


//Функция определения индекса в строках ComboBox-а Combo
//строки st
function Index(Combo:TComboBox;St:String):Integer;
var
  i : Integer;
begin
  Result:=-1;
  for i:=0 To Combo.Items.Count-1 do
  if Combo.Items[i] = St then
  begin
    Result:=i;
    Break;
  end;
end;


//Сохранить файл как...
procedure TForm1.Button5Click(Sender: TObject);
var
  i : Integer;
  ta : TAutomobile;
begin
  OpenDialog1.Title := 'Сохранение файла под другим именем'; //изменение заголовка окна диалога
  if OpenDialog1.Execute then
  begin //выполнение стандартного диалога выбора имени файла
    //Создаём файл с новым именем или заменяем исходный
    AssignFile(fa,Opendialog1.FileName);
    Rewrite(fa); //создание нового файла
    //Сохраняем данные из StringGrid
    for i:=1 To StringGrid1.RowCount-1 do
    begin
      //Собираем запись
      with StringGrid1, ta do
      begin
        Marka := Cells[1,i];
        Price := StrToInt(Cells[2,i]);
        ChargeFuel := StrToInt(Cells[3,i]);
        Reliability := StrToInt(Cells[4,i]);
        Comfort := Index(ComboBox2,Cells[5,i]); //через функцию описанную выше
      end;
      Write(fa,ta); //Записываем в файл
    end;
  end;
end;


//Закрыть файл
procedure TForm1.BitBtn1Click(Sender: TObject);
var
  k : Integer;
begin
  CloseFile(fa); //Закроем открытый файл

  StringGrid1.RowCount:=2;
  //Очищаем последнюю строку из StringGrid
  //Удалять нельзя - теряется фиксированная строка
  for k:=0 To StringGrid1.ColCount-1 do
  StringGrid1.Cells[k,1]:='';

  Button1.Enabled:=False;
  Button3.Enabled:=True;  //Сделать доступной кнопку "Открыть"
  BitBtn1.Enabled:=False; //Сделать недоступной кнопку "Закрыть"
  Button5.Enabled:=False; //Сделать недоступной кнопку "Сохранить как"

  Button6.Enabled:=False;
  Button7.Enabled:=False;
end;


//Собираем запись из элементов на форме в переменную ta
procedure TForm1.CollectData(var ta:TAutomobile);
begin
  with ta do
  begin
    Marka := ComboBox1.Text;
    Price := StrToInt(Edit1.Text);
    ChargeFuel := StrToInt(Edit2.Text);
    Reliability := StrToInt(Edit3.Text);
    Comfort := ComboBox2.ItemIndex;
 end;
end;


//Добавить запись
procedure TForm1.Button1Click(Sender: TObject);
var
  ta : TAutomobile;
begin
  Inc(KolZap);

  //Собираем запись
  CollectData(ta);

  Seek(fa,FileSize(fa)); //Указатель в конец файла для добавления новой записи
  Write(fa, ta);  //запись в файл
  if KolZap<>1 then
  StringGrid1.RowCount:=StringGrid1.RowCount+1;

  with StringGrid1, ta do
  begin
    Cells[1,KolZap] := Marka;
    Cells[2,KolZap] := IntToStr(Price);
    Cells[3,KolZap] := IntToStr(ChargeFuel);
    Cells[4,KolZap] := IntToStr(Reliability);
    Cells[5,KolZap] := ComboBox2.Items[Comfort];
    Cells[0,KolZap] := IntToStr(KolZap);
  end;

  Edit1.Text := ''; Edit2.Text := ''; Edit3.Text := '';
  ComboBox1.ItemIndex:=-1; ComboBox2.ItemIndex:=-1;

  Button6.Enabled:=True;
  Button7.Enabled:=True;
  ComboBox1.SetFocus;
end;


//Собираем запись из элементов на форме в переменную ta
//Группа данных "от" параметров выборки
procedure TForm1.CollectData1(var ta:TAutomobile);
begin
  with ta do
    begin
    Price := StrToInt(Edit21.Text);
    ChargeFuel := StrToInt(Edit22.Text);
    Reliability := StrToInt(Edit23.Text);
    Comfort := ComboBox21.ItemIndex;
  end;
end;


//Собираем запись из элементов на форме в переменную ta
//Группа данных "до" параметров выборки
procedure TForm1.CollectData2(var ta:TAutomobile);
begin
  with ta do
   begin
   Price := StrToInt(Edit31.Text);
   ChargeFuel := StrToInt(Edit32.Text);
   Reliability := StrToInt(Edit33.Text);
   Comfort := ComboBox22.ItemIndex;
  end;
end;

//Выборка данных по заданным параметрам
procedure TForm1.Button7Click(Sender: TObject);
var
  ta,tao,tad : TAutomobile;
begin
  //Собираем запись параметры выборки "от"
  CollectData1(tao);

  //Собираем запись параметры выборки "до"
  CollectData2(tad);

  //Будем искать в данных из файла
  Seek(fa,0); //Указатель в начало файла
  Memo1.Clear;

  while not Eof(fa) do
  begin
    Read(fa,ta);
    if (ta.Price>=tao.Price) and (ta.Price<=tad.Price) and
    (ta.ChargeFuel>=tao.ChargeFuel) and (ta.ChargeFuel<=tad.ChargeFuel) and
    (ta.Reliability>=tao.Reliability) and (ta.Reliability<=tad.Reliability) and
    (ta.Comfort>=tao.Comfort) and (ta.Comfort<=tad.Comfort) then
    //Добавим данные по машине в Memo
    Memo1.Lines.Add(ta.Marka+'  цена: '+IntToStr(ta.Price));
  end;
  If Memo1.Lines.Count=0 Then
  Memo1.Lines.Add('Данных, удовлетворяющих заданным критериям не найдено!');
end;


//Закрытие формы
procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not Button3.Enabled then //Если файл был открыт - закрываем
  CloseFile(fa);
end;


//Удалить выбранную запись из файла
procedure TForm1.Button6Click(Sender: TObject);
var
  i,j,k : Integer;
  ta : TAutomobile;
begin
  if KolZap>1 then
  begin
    i:=StringGrid1.Row-1; //Индекс записи в файле, которую нужно удалить
    j:=i+1; //Индекс записи следующей после удаляемой

    //Сдвигаем записи на одну, перекрыв удаляемую
    while True do
    begin
      Seek(fa,j);
      if Eof(fa) then Break; //Выход если конец файла
      Read(fa,ta); //Читаем следующую запись
      Seek(fa,i);
      Write(fa,ta);
      //Удалим строку из StringGrid
      for k:=1 To StringGrid1.ColCount-1 do
      StringGrid1.Cells[k,i+1]:=StringGrid1.Cells[k,j+1];
      StringGrid1.Cells[0,i+1]:=IntToStr(i+1);

      Inc(i); Inc(j);
    end;
    Seek(fa,i); //На запись за последней значащей
    Truncate(fa); //Обрезаем остаток файла
    //Удаляем последнюю строку из StringGrid1
    StringGrid1.RowCount:=StringGrid1.RowCount-1;
    Dec(KolZap);
  end else
  //Если в файле не более одной записи
  begin
    CloseFile(fa); //Закрываем файл
    Rewrite(fa);   //Создаём файл снова (пустой)
    StringGrid1.RowCount:=2;
    //Очищаем последнюю строку из StringGrid
    //Удалять нельзя - теряется фиксированная строка
    for k:=0 To StringGrid1.ColCount-1 do
    StringGrid1.Cells[k,1]:='';

    KolZap:=0;
    Button6.Enabled:=False;
    Button7.Enabled:=False;
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  if Memo1.Lines.Count <> 0 then
  begin
    SaveDialog1.Title := 'Сохранить список выбранных автомобилей в текстовый файл';
    //Путь в папку программы
    SaveDialog1.InitialDir := ExtractFilePath(ParamStr(0));
    SaveDialog1.DefaultExt := '*.txt';
    SaveDialog1.Filter := 'Текстовый файл|*.txt|Все файлы|*.*';
    if SaveDialog1.Execute then
    Memo1.Lines.SaveToFile(SaveDialog1.FileName);
  end else
  ShowMessage('Отсутствуют данные для сохранения!');
end;


end.
