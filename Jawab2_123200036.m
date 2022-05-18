function  varargout  =  Jawab2_123200036( varargin )
% JAWAB2_123200036 kode MATLAB untuk Jawab2_123200036.fig
%       JAWAB2_123200036, dengan sendirinya, membuat JAWAB2_123200036*.
%
%       H = JAWAB2_123200036 mengembalikan pegangan ke JAWAB2_123200036 baru atau pegangan ke
%       lajang yang ada*.
%
%       JAWAB2_123200036('CALLBACK',hObject,eventData,handles,...) memanggil lokal
%       fungsi bernama CALLBACK di JAWAB2_123200036.M dengan argumen input yang diberikan.
%
%       JAWABAN2_123200036('Properti','Nilai',...) membuat JAWAB2_123200036 baru atau menaikkan
%       lajang yang ada*. Mulai dari kiri, pasangan nilai properti adalah
%       diterapkan pada GUI sebelum Jawab2_123200036_OpeningFcn dipanggil. Sebuah
%       nama properti tidak dikenal atau nilai tidak valid membuat aplikasi properti
%       berhenti. Semua masukan diteruskan ke Jawab2_123200036_OpeningFcn melalui varargin.
%
%       *Lihat Opsi GUI pada menu Alat PANDUAN. Pilih "GUI hanya mengizinkan satu
%       instance untuk dijalankan (tunggal)".
%
% Lihat juga: PANDUAN, GUIDATA, PANDUAN

% Edit teks di atas untuk mengubah jawaban membantu Jawaban2_123200036

% Terakhir Diubah oleh GUIDE v2.5 18-Mei-2022 14:20:48

% Mulai kode inisialisasi - JANGAN EDIT
gui_Singleton =  1 ;
gui_State =  struct ( ' gui_Name ' ,        mfilename , ...
                   ' gui_Singleton ' ,   gui_Singleton , ...
                   ' gui_OpeningFcn ' ,@ Jawab2_123200036_OpeningFcn , ...
                   ' gui_OutputFcn ' , @ Jawab2_123200036_OutputFcn , ...
                   ' gui_LayoutFcn ' , [] , ...
                   ' gui_Callback ' , []);
if  nargin  &&  ischar ( varargin { 1 })
    gui_State.gui_Callback =  str2func ( varargin { 1 });
akhir

jika  nargout
    [ varargout { 1 : nargout }] =  gui_mainfcn ( gui_State , varargin { : });
lain
    gui_mainfcn ( gui_State , varargin { : });
akhir
% Akhiri kode inisialisasi - JANGAN EDIT


% --- Dieksekusi tepat sebelum Jawab2_123200036 ditampilkan.
function  Jawab2_123200036_OpeningFcn ( hObject , eventdata , handles , varargin )
% Fungsi ini tidak memiliki argumen keluaran, lihat OutputFcn.
% hPegangan objek ke angka
% eventdata dicadangkan - untuk didefinisikan dalam versi MATLAB yang akan datang
% menangani struktur dengan pegangan dan data pengguna (lihat GUIDATA)
% argumen baris perintah varargin untuk Jawab2_123200036 (lihat VARARGIN)

% Pilih output baris perintah default untuk Jawab2_123200036
handles.output =  hObject ;

% Perbarui struktur pegangan
guidata ( hObject , menangani );

% UIWAIT membuat Jawab2_123200036 menunggu respon (lihat UIRESUME)
% uiwait(handles.figure1);


% --- Keluaran dari fungsi ini dikembalikan ke baris perintah.
function  varargout  =  Jawab2_123200036_OutputFcn ( hObject , eventdata , handles )
% larik sel varargout untuk mengembalikan argumen keluaran (lihat VARARGOUT);
% hPegangan objek ke angka
% eventdata dicadangkan - untuk didefinisikan dalam versi MATLAB yang akan datang
% menangani struktur dengan pegangan dan data pengguna (lihat GUIDATA)

% Dapatkan output baris perintah default dari struktur pegangan
varargout { 1 } =  menangani . keluaran ;


% --- Dieksekusi pada penekanan tombol di tampil_036.
fungsi  tampil_036_Callback ( hObject , eventdata , handle )
% hObject menangani untuk tampil_036 (lihat GCBO)
% eventdata dicadangkan - untuk didefinisikan dalam versi MATLAB yang akan datang
% menangani struktur dengan pegangan dan data pengguna (lihat GUIDATA)
data =  xlsread ( ' Dataset Hostel Jepang.xlsx ' , ' B2:P50 ' );
set ( menangani . uitable1_036 , ' Data ' , data );



% --- Dieksekusi pada penekanan tombol pada proses_036.
fungsi  proses_036_Callback ( hObject , eventdata , menangani )
% hObject menangani ke proses_036 (lihat GCBO)
% eventdata dicadangkan - untuk didefinisikan dalam versi MATLAB yang akan datang
% menangani struktur dengan pegangan dan data pengguna (lihat GUIDATA)
x =  xlsread ( ' Dataset Hostel Jepang.xlsx ' , ' B2:P50 ' );
k = [ 1  1  1  1 ];
w = [ 1  4  2  3 ];

[ m , n ] =  ukuran ( x );

R =  nol ( m , n );

untuk j = 1 : n
    jika  k ( j )== 1
        R ( : ,j)= x ( : , j )./ max ( x ( : , j ));
    lain
        R ( : ,j)= min ( x ( : , j ))./ x ( : , j );
    akhir
akhir

untuk i = 1 : m
    V (i) =  jumlah ( w .* R ( i , : ));
akhir

[ ~ , rowRank ] =  sort ( V , ' turun ' );

opts =  detectImportOptions ( ' Dataset Hostel Jepang.xlsx ' );
opts.SelectedVariableNames = ( 1 );
nama =  readmatrix ( ' Dataset Hostel Jepang.xlsx ' , opts );
asrama =  nama ( 1 : 20 );

set ( menangani . uitable2_036 , ' Data ' , hostel ( rowRank ));