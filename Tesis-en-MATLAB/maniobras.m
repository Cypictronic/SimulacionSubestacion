function varargout = maniobras(varargin)
% MANIOBRAS MATLAB code for maniobras.fig
%      MANIOBRAS, by itself, creates a new MANIOBRAS or raises the existing
%      singleton*.
%
%      H = MANIOBRAS returns the handle to a new MANIOBRAS or the handle to
%      the existing singleton*.
%
%      MANIOBRAS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MANIOBRAS.M with the given input arguments.
%
%      MANIOBRAS('Property','Value',...) creates a new MANIOBRAS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before maniobras_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to maniobras_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help maniobras

% Last Modified by GUIDE v2.5 12-Feb-2018 17:39:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @maniobras_OpeningFcn, ...
                   'gui_OutputFcn',  @maniobras_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before maniobras is made visible.
function maniobras_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to maniobras (see VARARGIN)

% Choose default command line output for maniobras
handles.output = hObject;

global pasoBarraT1 pasoBarraT2 pasoBarraT3 pasoBarraT4 pasoBarraT5;
pasoBarraT1=0;
pasoBarraT2=0;
pasoBarraT3=0;
pasoBarraT4=0;
pasoBarraT5=0;
global byPassActivo1 byPassActivo2 byPassActivo3;
global estado estado2 estado3 estado4;
estado = []; % L1 L2 L3 L4 L5 L6 L7 L8 L9 L10 L11 (13.8kV)
estado2 = []; % L12 L13 L14 L15 (13.8kV)
estado3 = []; % L1 L2 L3 L4 (34.5kV)
estado4 = []; % Transformadores
for i=1:11
    estado(i)=0;
end

for i=1:4
    estado2(i)=0;
    estado3(i)=0;
end
byPassActivo1=0; %L1 a L11 13.8kV
byPassActivo2=0; %L2 a L15 13.8kV
byPassActivo3=0; %L1 a L4 34.5kV

%Habilitar/Deshabilitar Menú
%L1
set(handles.cL1_138,'Enable','On');
set(handles.dL1_138,'Enable','Off');
set(handles.cL1bp_138,'Enable','Off');
set(handles.rL1bp_138,'Enable','Off');
%L2
set(handles.cL2_138,'Enable','On');
set(handles.dL2_138,'Enable','Off');
set(handles.cL2bp_138,'Enable','Off');
set(handles.rL2bp_138,'Enable','Off');
%L3
set(handles.cL3_138,'Enable','On');
set(handles.dL3_138,'Enable','Off');
set(handles.cL3bp_138,'Enable','Off');
set(handles.rL3bp_138,'Enable','Off');
%L4
set(handles.cL4_138,'Enable','On');
set(handles.dL4_138,'Enable','Off');
set(handles.cL4bp_138,'Enable','Off');
set(handles.rL4bp_138,'Enable','Off');
%L5
set(handles.cL5_138,'Enable','On');
set(handles.dL5_138,'Enable','Off');
set(handles.cL5bp_138,'Enable','Off');
set(handles.rL5bp_138,'Enable','Off');
%L6
set(handles.cL6_138,'Enable','On');
set(handles.dL6_138,'Enable','Off');
set(handles.cL6bp_138,'Enable','Off');
set(handles.rL6bp_138,'Enable','Off');
%L7
set(handles.cL7_138,'Enable','On');
set(handles.dL7_138,'Enable','Off');
set(handles.cL7bp_138,'Enable','Off');
set(handles.rL7bp_138,'Enable','Off');
%L8
set(handles.cL8_138,'Enable','On');
set(handles.dL8_138,'Enable','Off');
set(handles.cL8bp_138,'Enable','Off');
set(handles.rL8bp_138,'Enable','Off');
%L9
set(handles.cL9_138,'Enable','On');
set(handles.dL9_138,'Enable','Off');
set(handles.cL9bp_138,'Enable','Off');
set(handles.rL9bp_138,'Enable','Off');
%L10
set(handles.cL10_138,'Enable','On');
set(handles.dL10_138,'Enable','Off');
set(handles.cL10bp_138,'Enable','Off');
set(handles.rL10bp_138,'Enable','Off');
%L11
set(handles.cL11_138,'Enable','On');
set(handles.dL11_138,'Enable','Off');
set(handles.cL11bp_138,'Enable','Off');
set(handles.rL11bp_138,'Enable','Off');
%L12
set(handles.cL12_138,'Enable','On');
set(handles.dL12_138,'Enable','Off');
set(handles.cL12bp_138,'Enable','Off');
set(handles.rL12bp_138,'Enable','Off');
%L13
set(handles.cL13_138,'Enable','On');
set(handles.dL13_138,'Enable','Off');
set(handles.cL13bp_138,'Enable','Off');
set(handles.rL13bp_138,'Enable','Off');
%L14
set(handles.cL14_138,'Enable','On');
set(handles.dL14_138,'Enable','Off');
set(handles.cL14bp_138,'Enable','Off');
set(handles.rL14bp_138,'Enable','Off');
%L15
set(handles.cL15_138,'Enable','On');
set(handles.dL15_138,'Enable','Off');
set(handles.cL15bp_138,'Enable','Off');
set(handles.rL15bp_138,'Enable','Off');
%L1
set(handles.cL1_345,'Enable','On');
set(handles.dL1_345,'Enable','Off');
set(handles.cL1bp_345,'Enable','Off');
set(handles.rL1bp_345,'Enable','Off');
%L2
set(handles.cL2_345,'Enable','On');
set(handles.dL2_345,'Enable','Off');
set(handles.cL2bp_345,'Enable','Off');
set(handles.rL2bp_345,'Enable','Off');
%L3
set(handles.cL3_345,'Enable','On');
set(handles.dL3_345,'Enable','Off');
set(handles.cL3bp_345,'Enable','Off');
set(handles.rL3bp_345,'Enable','Off');
%L4
set(handles.cL4_345,'Enable','On');
set(handles.dL4_345,'Enable','Off');
set(handles.cL4bp_345,'Enable','Off');
set(handles.rL4bp_345,'Enable','Off');

%Union 13.8kV
set(handles.conecB1B2,'Enable','On');
set(handles.desconecB1B2,'Enable','Off');
%Union 34.5kV
set(handles.conecB3B4,'Enable','On');
set(handles.desconecB3B4,'Enable','Off');

imshow('bp31.png','Parent',handles.axes12);
imshow('dl1.png','Parent',handles.axes9);
imshow('dl1.png','Parent',handles.axes10);
imshow('dl1.png','Parent',handles.axes11);
imshow('dl1.png','Parent',handles.axes1);
imshow('dl1.png','Parent',handles.axes2);
imshow('dl1.png','Parent',handles.axes3);
imshow('dl1.png','Parent',handles.axes4);
imshow('dl1.png','Parent',handles.axes5);
imshow('union_121.png','Parent',handles.axes13);
imshow('dl1.png','Parent',handles.axes6);
imshow('dl1.png','Parent',handles.axes7);
imshow('dl1.png','Parent',handles.axes8);
imshow('bp31.png','Parent',handles.axes25);
imshow('dl1.png','Parent',handles.axes26);
imshow('dl1.png','Parent',handles.axes27);
imshow('dl1.png','Parent',handles.axes28);
imshow('dl1.png','Parent',handles.axes29);
imshow('bp21.png','Parent',handles.axes30);
imshow('bl1.png','Parent',handles.axes31);
imshow('bl1.png','Parent',handles.axes32);
imshow('bl1.png','Parent',handles.axes33);
imshow('bl1.png','Parent',handles.axes34);
imshow('bt138.png','Parent',handles.axes36);
imshow('b138.png','Parent',handles.axes37);
imshow('TXdb1.png','Parent',handles.axes38);
imshow('TXdb1.png','Parent',handles.axes39);
imshow('union_341.png','Parent',handles.axes40);
imshow('bt345.png','Parent',handles.axes41);
imshow('b138kv.png','Parent',handles.axes42);
imshow('b138kv.png','Parent',handles.axes43);
imshow('TXdb1.png','Parent',handles.axes44);
imshow('TXbb1.png','Parent',handles.axes45);
imshow('TXbb1.png','Parent',handles.axes46);
imshow('TX61.png','Parent',handles.axes47);
imshow('16.png','Parent',handles.axes48);
imshow('bt115.png','Parent',handles.axes49);
imshow('bt115.png','Parent',handles.axes50);
imshow('bp1151.png','Parent',handles.axes51);
imshow('1.png','Parent',handles.axes52);
imshow('L.png','Parent',handles.axes53);
imshow('TXa1.png','Parent',handles.axes54);
imshow('TXa1.png','Parent',handles.axes55);
imshow('TXa1.png','Parent',handles.axes56);
imshow('TXa1.png','Parent',handles.axes57);
imshow('TXa1.png','Parent',handles.axes58);

%símbolo de falla
imshow('falla.png','Parent',handles.axes68);
imshow('falla.png','Parent',handles.axes69);
imshow('falla.png','Parent',handles.axes70);
imshow('falla.png','Parent',handles.axes71);
imshow('falla.png','Parent',handles.axes72);
imshow('falla.png','Parent',handles.axes73);
imshow('falla.png','Parent',handles.axes74);

set(get(handles.axes68,'children'),'Visible','Off');
set(get(handles.axes69,'children'),'Visible','Off');
set(get(handles.axes70,'children'),'Visible','Off');
set(get(handles.axes71,'children'),'Visible','Off');
set(get(handles.axes72,'children'),'Visible','Off');
set(get(handles.axes73,'children'),'Visible','Off');
set(get(handles.axes74,'children'),'Visible','Off');

set(handles.DesconecBT1,'Enable','Off');
set(handles.DesconecBT2,'Enable','Off');
set(handles.DesconecBT3,'Enable','Off');
set(handles.DesconecBT4,'Enable','Off');
set(handles.DesconecBT5,'Enable','Off');
set(handles.DesconecBT6,'Enable','Off');

%Sistema de Puesta a Tierra
set(handles.spt1_conec,'Enable','On');
set(handles.spt2_conec,'Enable','On');
set(handles.spt3_conec,'Enable','On');
set(handles.spt4_conec,'Enable','On');
set(handles.spt5_conec,'Enable','On');
set(handles.spt6_conec,'Enable','On');
set(handles.spt7_conec,'Enable','On');
set(handles.spt8_conec,'Enable','On');
set(handles.spt9_conec,'Enable','On');
set(handles.spt10_conec,'Enable','On');
set(handles.spt11_conec,'Enable','On');
set(handles.spt12_conec,'Enable','On');
set(handles.spt13_conec,'Enable','On');
set(handles.spt14_conec,'Enable','On');
set(handles.spt15_conec,'Enable','On');
set(handles.spt16_conec,'Enable','On');
set(handles.spt17_conec,'Enable','On');
set(handles.spt18_conec,'Enable','On');
set(handles.spt19_conec,'Enable','On');


set(handles.spt1_desc,'Enable','Off');
set(handles.spt2_desc,'Enable','Off');
set(handles.spt3_desc,'Enable','Off');
set(handles.spt4_desc,'Enable','Off');
set(handles.spt5_desc,'Enable','Off');
set(handles.spt6_desc,'Enable','Off');
set(handles.spt7_desc,'Enable','Off');
set(handles.spt8_desc,'Enable','Off');
set(handles.spt9_desc,'Enable','Off');
set(handles.spt10_desc,'Enable','Off');
set(handles.spt11_desc,'Enable','Off');
set(handles.spt12_desc,'Enable','Off');
set(handles.spt13_desc,'Enable','Off');
set(handles.spt14_desc,'Enable','Off');
set(handles.spt15_desc,'Enable','Off');
set(handles.spt16_desc,'Enable','Off');
set(handles.spt17_desc,'Enable','Off');
set(handles.spt18_desc,'Enable','Off');
set(handles.spt19_desc,'Enable','Off');

%Maniobras de Transformador
set(handles.cB1TX1,'Enable','On');
set(handles.cB2TX1,'Enable','On');
set(handles.dBTX1,'Enable','Off');
set(handles.cB1TX2,'Enable','On');
set(handles.cB2TX2,'Enable','On');
set(handles.dBTX2,'Enable','Off');
set(handles.cB1TX3,'Enable','On');
set(handles.cB2TX3,'Enable','On');
set(handles.dBTX3,'Enable','Off');
set(handles.cB1TX4,'Enable','On');
set(handles.cB2TX4,'Enable','On');
set(handles.dBTX4,'Enable','Off');
set(handles.cB1TX5,'Enable','On');
set(handles.cB2TX5,'Enable','On');
set(handles.dBTX5,'Enable','Off');
guidata(hObject, handles);

% UIWAIT makes maniobras wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = maniobras_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
global hayDatos;
hayDatos=0;


% --- Executes on button press in pulsador.
function pulsador_Callback(hObject, eventdata, handles)
% hObject    handle to pulsador (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%imshow('seccionador_azul_close.png','Parent',handles.axes12);
%imshow('seccionador_azul_close.png','Parent',handles.pulsador);


% --- Executes on mouse press over axes background.
function axes12_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in menuManiobras.
function menuManiobras_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function menuManiobras_CreateFcn(hObject, eventdata, handles)
% hObject    handle to menuManiobras (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in menuTransferencias.
function menuTransferencias_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function menuTransferencias_CreateFcn(hObject, eventdata, handles)
% hObject    handle to menuTransferencias (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function text130_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text130 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object deletion, before destroying properties.
function text130_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to text130 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_2_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_3_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_4_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_5_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_6_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_7_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_8_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_9_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_10_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_11_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_12_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_13_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_14_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_15_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_16_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_17_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_18_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_19_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_20_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_21_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_22_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function cL1_138_Callback(hObject, eventdata, handles)
global byPassActivo1 estado;
for i=1:4
    bypass =  strcat('dl',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes1);
    pause(2);
end
set(handles.cL1_138,'Enable','Off');
set(handles.dL1_138,'Enable','On');
estado(1)=1;
if(byPassActivo1==1)
    set(handles.cL1bp_138,'Enable','Off');
else
    set(handles.cL1bp_138,'Enable','On');
end
set(handles.rL1bp_138,'Enable','Off');


% --------------------------------------------------------------------
function dL1_138_Callback(hObject, eventdata, handles)
global estado;
for i=4:7
    bypass =  strcat('dl',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes1);
    pause(2);
end
estado(1)=0;
set(handles.cL1_138,'Enable','On');
set(handles.dL1_138,'Enable','Off');
set(handles.cL1bp_138,'Enable','Off');
set(handles.rL1bp_138,'Enable','Off');


% --------------------------------------------------------------------
function cL1bp_138_Callback(hObject, eventdata, handles)
%Conectar con ByPass L1
global byPassActivo1;
byPassActivo1=1;
pause(2)
bypass =  strcat('dt1.png');
imshow(bypass,'Parent',handles.axes1);

for i=1:4
    bypass =  strcat('bp3',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes12);
    pause(2)
end
for i=2:4
    bypass =  strcat('dt',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes1);
    pause(2)
end
set(handles.cL1_138,'Enable','Off');
set(handles.dL1_138,'Enable','Off');
set(handles.cL1bp_138,'Enable','Off');
set(handles.rL1bp_138,'Enable','On');
%Deshabilitar Otros
set(handles.cL2bp_138,'Enable','Off');
set(handles.cL3bp_138,'Enable','Off');
set(handles.cL4bp_138,'Enable','Off');
set(handles.cL5bp_138,'Enable','Off');
set(handles.cL6bp_138,'Enable','Off');
set(handles.cL7bp_138,'Enable','Off');
set(handles.cL8bp_138,'Enable','Off');
set(handles.cL9bp_138,'Enable','Off');
set(handles.cL10bp_138,'Enable','Off');
set(handles.cL11bp_138,'Enable','Off');


% --------------------------------------------------------------------
function rL1bp_138_Callback(hObject, eventdata, handles)
%Reposición de Línea 1 por su ByPass
global byPassActivo1 estado;
byPassActivo1=0;
for i=4:7
    bypass =  strcat('dt',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes1);
    pause(2)
end
for i=5:7
    bypass =  strcat('bp3',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes12);
    pause(2)
end
bypass =  'dl4.png';
imshow(bypass,'Parent',handles.axes1);
set(handles.cL1_138,'Enable','Off');
set(handles.dL1_138,'Enable','On');
set(handles.cL1bp_138,'Enable','On');
set(handles.rL1bp_138,'Enable','Off');

for i=1:11
    if(estado(i)==1)
        switch(i)
            case 1
                set(handles.cL1bp_138,'Enable','On');
                set(handles.dL1_138,'Enable','On');
                set(handles.cL1_138,'Enable','Off');
                set(handles.rL1bp_138,'Enable','Off');
            case 2
                set(handles.cL2bp_138,'Enable','On');
                set(handles.dL2_138,'Enable','On');
                set(handles.cL2_138,'Enable','Off');
                set(handles.rL2bp_138,'Enable','Off');   
            case 3
                set(handles.cL3bp_138,'Enable','On');
                set(handles.dL3_138,'Enable','On');
                set(handles.cL3_138,'Enable','Off');
                set(handles.rL3bp_138,'Enable','Off'); 
            case 4
                set(handles.cL4bp_138,'Enable','On');
                set(handles.dL4_138,'Enable','On');
                set(handles.cL4_138,'Enable','Off');
                set(handles.rL4bp_138,'Enable','Off');
            case 5
                set(handles.cL5bp_138,'Enable','On');
                set(handles.dL5_138,'Enable','On');
                set(handles.cL5_138,'Enable','Off');
                set(handles.rL5bp_138,'Enable','Off');                 
            case 6
                set(handles.cL6bp_138,'Enable','On');
                set(handles.dL6_138,'Enable','On');
                set(handles.rL6bp_138,'Enable','Off');
                set(handles.cL6_138,'Enable','Off');
            case 7
                set(handles.cL7bp_138,'Enable','On');
                set(handles.dL7_138,'Enable','On');  
                set(handles.cL7_138,'Enable','Off');
                set(handles.rL7bp_138,'Enable','Off');
            case 8
                set(handles.cL8bp_138,'Enable','On');
                set(handles.dL8_138,'Enable','On'); 
                set(handles.cL8_138,'Enable','Off');
                set(handles.rL8bp_138,'Enable','Off'); 
            case 9
                set(handles.cL9bp_138,'Enable','On');
                set(handles.dL9_138,'Enable','On');
                set(handles.cL9_138,'Enable','Off');
                set(handles.rL9bp_138,'Enable','Off');
            case 10
                set(handles.cL10bp_138,'Enable','On');
                set(handles.dL10_138,'Enable','On');
                set(handles.cL10_138,'Enable','Off');
                set(handles.rL10bp_138,'Enable','Off');  
            case 11
                set(handles.cL11bp_138,'Enable','On');
                set(handles.dL11_138,'Enable','On');
                set(handles.cL11_138,'Enable','Off');
                set(handles.rL11bp_138,'Enable','Off');                 
        end
    else
        switch(i)
            case 1
                set(handles.cL1bp_138,'Enable','Off');
                set(handles.dL1_138,'Enable','Off');
                set(handles.cL1_138,'Enable','On');
                set(handles.rL1bp_138,'Enable','Off');
            case 2
                set(handles.cL2bp_138,'Enable','Off');
                set(handles.dL2_138,'Enable','Off');
                set(handles.cL2_138,'Enable','On');
                set(handles.rL2bp_138,'Enable','Off');   
            case 3
                set(handles.cL3bp_138,'Enable','Off');
                set(handles.dL3_138,'Enable','Off');
                set(handles.cL3_138,'Enable','On');
                set(handles.rL3bp_138,'Enable','Off'); 
            case 4
                set(handles.cL4bp_138,'Enable','Off');
                set(handles.dL4_138,'Enable','Off');
                set(handles.cL4_138,'Enable','On');
                set(handles.rL4bp_138,'Enable','Off');                  
            case 5
                set(handles.cL5bp_138,'Enable','Off');
                set(handles.dL5_138,'Enable','Off');
                set(handles.cL5_138,'Enable','On');
                set(handles.rL5bp_138,'Enable','Off');                  
            case 6
                set(handles.cL6bp_138,'Enable','Off');
                set(handles.dL6_138,'Enable','Off');
                set(handles.rL6bp_138,'Enable','Off');
                set(handles.cL6_138,'Enable','On');
            case 7
                set(handles.cL7bp_138,'Enable','Off');
                set(handles.dL7_138,'Enable','Off');  
                set(handles.cL7_138,'Enable','On');
                set(handles.rL7bp_138,'Enable','Off');
            case 8
                set(handles.cL8bp_138,'Enable','Off');
                set(handles.dL8_138,'Enable','Off'); 
                set(handles.cL8_138,'Enable','On');
                set(handles.rL8bp_138,'Enable','Off');                
            case 9
                set(handles.cL9bp_138,'Enable','Off');
                set(handles.dL9_138,'Enable','Off'); 
                set(handles.cL9_138,'Enable','On');
                set(handles.rL9bp_138,'Enable','Off');                   
            case 10
                set(handles.cL10bp_138,'Enable','Off');
                set(handles.dL10_138,'Enable','Off'); 
                set(handles.cL10_138,'Enable','On');
                set(handles.rL10bp_138,'Enable','Off');                   
            case 11
                set(handles.cL11bp_138,'Enable','Off');
                set(handles.dL11_138,'Enable','Off'); 
                set(handles.cL11_138,'Enable','On');
                set(handles.rL11bp_138,'Enable','Off');                   
        end
        
    end
end


% --------------------------------------------------------------------
function cL2_138_Callback(hObject, eventdata, handles)
global byPassActivo1 estado;
for i=1:4
    bypass =  strcat('dl',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes2);
    pause(2);
end
set(handles.cL2_138,'Enable','Off');
set(handles.dL2_138,'Enable','On');
estado(2)=1;
if(byPassActivo1==1)
    set(handles.cL2bp_138,'Enable','Off');
else
    set(handles.cL2bp_138,'Enable','On');
end
set(handles.rL2bp_138,'Enable','Off');

% --------------------------------------------------------------------
function dL2_138_Callback(hObject, eventdata, handles)
global estado;
for i=4:7
    bypass =  strcat('dl',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes2);
    pause(2);
end
estado(2)=0;
set(handles.cL2_138,'Enable','On');
set(handles.dL2_138,'Enable','Off');
set(handles.cL2bp_138,'Enable','Off');
set(handles.rL2bp_138,'Enable','Off');


% --------------------------------------------------------------------
function cL2bp_138_Callback(hObject, eventdata, handles)
%Conectar con ByPass L2
global byPassActivo1;
byPassActivo1=1;
pause(2)
bypass =  strcat('dt1.png');
imshow(bypass,'Parent',handles.axes2);
for i=1:4
    bypass =  strcat('bp3',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes12);
    pause(2)
end
for i=2:4
    bypass =  strcat('dt',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes2);
    pause(2)
end
set(handles.cL2_138,'Enable','Off');
set(handles.dL2_138,'Enable','Off');
set(handles.cL2bp_138,'Enable','Off');
set(handles.rL2bp_138,'Enable','On');
%Deshabilitar Otros
set(handles.cL1bp_138,'Enable','Off');
set(handles.cL3bp_138,'Enable','Off');
set(handles.cL4bp_138,'Enable','Off');
set(handles.cL5bp_138,'Enable','Off');
set(handles.cL6bp_138,'Enable','Off');
set(handles.cL7bp_138,'Enable','Off');
set(handles.cL8bp_138,'Enable','Off');
set(handles.cL9bp_138,'Enable','Off');
set(handles.cL10bp_138,'Enable','Off');
set(handles.cL11bp_138,'Enable','Off');

% --------------------------------------------------------------------
function rL2bp_138_Callback(hObject, eventdata, handles)
%Reposición de Línea 2 por su ByPass
global byPassActivo1 estado;
byPassActivo1=0;
for i=4:7
    bypass =  strcat('dt',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes2);
    pause(2)
end
for i=5:7
    bypass =  strcat('bp3',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes12);
    pause(2)
end
bypass =  'dl4.png';
imshow(bypass,'Parent',handles.axes2);
set(handles.cL2_138,'Enable','Off');
set(handles.dL2_138,'Enable','On');
set(handles.cL2bp_138,'Enable','On');
set(handles.rL2bp_138,'Enable','Off');
for i=1:11
    if(estado(i)==1)
        switch(i)
            case 1
                set(handles.cL1bp_138,'Enable','On');
                set(handles.dL1_138,'Enable','On');
                set(handles.cL1_138,'Enable','Off');
                set(handles.rL1bp_138,'Enable','Off');
            case 2
                set(handles.cL2bp_138,'Enable','On');
                set(handles.dL2_138,'Enable','On');
                set(handles.cL2_138,'Enable','Off');
                set(handles.rL2bp_138,'Enable','Off');   
            case 3
                set(handles.cL3bp_138,'Enable','On');
                set(handles.dL3_138,'Enable','On');
                set(handles.cL3_138,'Enable','Off');
                set(handles.rL3bp_138,'Enable','Off'); 
            case 4
                set(handles.cL4bp_138,'Enable','On');
                set(handles.dL4_138,'Enable','On');
                set(handles.cL4_138,'Enable','Off');
                set(handles.rL4bp_138,'Enable','Off');
            case 5
                set(handles.cL5bp_138,'Enable','On');
                set(handles.dL5_138,'Enable','On');
                set(handles.cL5_138,'Enable','Off');
                set(handles.rL5bp_138,'Enable','Off');                 
            case 6
                set(handles.cL6bp_138,'Enable','On');
                set(handles.dL6_138,'Enable','On');
                set(handles.rL6bp_138,'Enable','Off');
                set(handles.cL6_138,'Enable','Off');
            case 7
                set(handles.cL7bp_138,'Enable','On');
                set(handles.dL7_138,'Enable','On');  
                set(handles.cL7_138,'Enable','Off');
                set(handles.rL7bp_138,'Enable','Off');
            case 8
                set(handles.cL8bp_138,'Enable','On');
                set(handles.dL8_138,'Enable','On'); 
                set(handles.cL8_138,'Enable','Off');
                set(handles.rL8bp_138,'Enable','Off'); 
            case 9
                set(handles.cL9bp_138,'Enable','On');
                set(handles.dL9_138,'Enable','On');
                set(handles.cL9_138,'Enable','Off');
                set(handles.rL9bp_138,'Enable','Off');
            case 10
                set(handles.cL10bp_138,'Enable','On');
                set(handles.dL10_138,'Enable','On');
                set(handles.cL10_138,'Enable','Off');
                set(handles.rL10bp_138,'Enable','Off');  
            case 11
                set(handles.cL11bp_138,'Enable','On');
                set(handles.dL11_138,'Enable','On');
                set(handles.cL11_138,'Enable','Off');
                set(handles.rL11bp_138,'Enable','Off');                 
        end
    else
        switch(i)
            case 1
                set(handles.cL1bp_138,'Enable','Off');
                set(handles.dL1_138,'Enable','Off');
                set(handles.cL1_138,'Enable','On');
                set(handles.rL1bp_138,'Enable','Off');
            case 2
                set(handles.cL2bp_138,'Enable','Off');
                set(handles.dL2_138,'Enable','Off');
                set(handles.cL2_138,'Enable','On');
                set(handles.rL2bp_138,'Enable','Off');   
            case 3
                set(handles.cL3bp_138,'Enable','Off');
                set(handles.dL3_138,'Enable','Off');
                set(handles.cL3_138,'Enable','On');
                set(handles.rL3bp_138,'Enable','Off'); 
            case 4
                set(handles.cL4bp_138,'Enable','Off');
                set(handles.dL4_138,'Enable','Off');
                set(handles.cL4_138,'Enable','On');
                set(handles.rL4bp_138,'Enable','Off');                  
            case 5
                set(handles.cL5bp_138,'Enable','Off');
                set(handles.dL5_138,'Enable','Off');
                set(handles.cL5_138,'Enable','On');
                set(handles.rL5bp_138,'Enable','Off');                  
            case 6
                set(handles.cL6bp_138,'Enable','Off');
                set(handles.dL6_138,'Enable','Off');
                set(handles.rL6bp_138,'Enable','Off');
                set(handles.cL6_138,'Enable','On');
            case 7
                set(handles.cL7bp_138,'Enable','Off');
                set(handles.dL7_138,'Enable','Off');  
                set(handles.cL7_138,'Enable','On');
                set(handles.rL7bp_138,'Enable','Off');
            case 8
                set(handles.cL8bp_138,'Enable','Off');
                set(handles.dL8_138,'Enable','Off'); 
                set(handles.cL8_138,'Enable','On');
                set(handles.rL8bp_138,'Enable','Off');                
            case 9
                set(handles.cL9bp_138,'Enable','Off');
                set(handles.dL9_138,'Enable','Off'); 
                set(handles.cL9_138,'Enable','On');
                set(handles.rL9bp_138,'Enable','Off');                   
            case 10
                set(handles.cL10bp_138,'Enable','Off');
                set(handles.dL10_138,'Enable','Off'); 
                set(handles.cL10_138,'Enable','On');
                set(handles.rL10bp_138,'Enable','Off');                   
            case 11
                set(handles.cL11bp_138,'Enable','Off');
                set(handles.dL11_138,'Enable','Off'); 
                set(handles.cL11_138,'Enable','On');
                set(handles.rL11bp_138,'Enable','Off');                   
        end
        
    end
end



% --------------------------------------------------------------------
function cL3_138_Callback(hObject, eventdata, handles)
global byPassActivo1 estado;
for i=1:4
    bypass =  strcat('dl',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes3);
    pause(2);
end
set(handles.cL3_138,'Enable','Off');
set(handles.dL3_138,'Enable','On');
estado(3)=1;
if(byPassActivo1==1)
    set(handles.cL3bp_138,'Enable','Off');
else
    set(handles.cL3bp_138,'Enable','On');
end
set(handles.rL3bp_138,'Enable','Off');


% --------------------------------------------------------------------
function dL3_138_Callback(hObject, eventdata, handles)
global estado;
for i=4:7
    bypass =  strcat('dl',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes3);
    pause(2);
end
estado(3)=0;
set(handles.cL3_138,'Enable','On');
set(handles.dL3_138,'Enable','Off');
set(handles.cL3bp_138,'Enable','Off');
set(handles.rL3bp_138,'Enable','Off');


% --------------------------------------------------------------------
function cL3bp_138_Callback(hObject, eventdata, handles)
%Conectar con ByPass L3
global byPassActivo1;
byPassActivo1=1;
pause(2)    
bypass =  strcat('dt1.png');
imshow(bypass,'Parent',handles.axes3);
    
for i=1:4
    bypass =  strcat('bp3',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes12);
    pause(2)
end
for i=2:4
    bypass =  strcat('dt',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes3);
    pause(2)
end
set(handles.cL3_138,'Enable','Off');
set(handles.dL3_138,'Enable','Off');
set(handles.cL3bp_138,'Enable','Off');
set(handles.rL3bp_138,'Enable','On');
%Deshabilitar Otros
set(handles.cL2bp_138,'Enable','Off');
set(handles.cL1bp_138,'Enable','Off');
set(handles.cL4bp_138,'Enable','Off');
set(handles.cL5bp_138,'Enable','Off');
set(handles.cL6bp_138,'Enable','Off');
set(handles.cL7bp_138,'Enable','Off');
set(handles.cL8bp_138,'Enable','Off');
set(handles.cL9bp_138,'Enable','Off');
set(handles.cL10bp_138,'Enable','Off');
set(handles.cL11bp_138,'Enable','Off');

% --------------------------------------------------------------------
function rL3bp_138_Callback(hObject, eventdata, handles)
%Reposición de Línea 3 por su ByPass
global byPassActivo1 estado;
byPassActivo1=0;
for i=4:7
    bypass =  strcat('dt',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes3);
    pause(2)
end
for i=5:7
    bypass =  strcat('bp3',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes12);
    pause(2)
end
bypass =  'dl4.png';
imshow(bypass,'Parent',handles.axes3);
set(handles.cL3_138,'Enable','Off');
set(handles.dL3_138,'Enable','On');
set(handles.cL3bp_138,'Enable','On');
set(handles.rL3bp_138,'Enable','Off');
for i=1:11
    if(estado(i)==1)
        switch(i)
            case 1
                set(handles.cL1bp_138,'Enable','On');
                set(handles.dL1_138,'Enable','On');
                set(handles.cL1_138,'Enable','Off');
                set(handles.rL1bp_138,'Enable','Off');
            case 2
                set(handles.cL2bp_138,'Enable','On');
                set(handles.dL2_138,'Enable','On');
                set(handles.cL2_138,'Enable','Off');
                set(handles.rL2bp_138,'Enable','Off');   
            case 3
                set(handles.cL3bp_138,'Enable','On');
                set(handles.dL3_138,'Enable','On');
                set(handles.cL3_138,'Enable','Off');
                set(handles.rL3bp_138,'Enable','Off'); 
            case 4
                set(handles.cL4bp_138,'Enable','On');
                set(handles.dL4_138,'Enable','On');
                set(handles.cL4_138,'Enable','Off');
                set(handles.rL4bp_138,'Enable','Off');
            case 5
                set(handles.cL5bp_138,'Enable','On');
                set(handles.dL5_138,'Enable','On');
                set(handles.cL5_138,'Enable','Off');
                set(handles.rL5bp_138,'Enable','Off');                 
            case 6
                set(handles.cL6bp_138,'Enable','On');
                set(handles.dL6_138,'Enable','On');
                set(handles.rL6bp_138,'Enable','Off');
                set(handles.cL6_138,'Enable','Off');
            case 7
                set(handles.cL7bp_138,'Enable','On');
                set(handles.dL7_138,'Enable','On');  
                set(handles.cL7_138,'Enable','Off');
                set(handles.rL7bp_138,'Enable','Off');
            case 8
                set(handles.cL8bp_138,'Enable','On');
                set(handles.dL8_138,'Enable','On'); 
                set(handles.cL8_138,'Enable','Off');
                set(handles.rL8bp_138,'Enable','Off'); 
            case 9
                set(handles.cL9bp_138,'Enable','On');
                set(handles.dL9_138,'Enable','On');
                set(handles.cL9_138,'Enable','Off');
                set(handles.rL9bp_138,'Enable','Off');
            case 10
                set(handles.cL10bp_138,'Enable','On');
                set(handles.dL10_138,'Enable','On');
                set(handles.cL10_138,'Enable','Off');
                set(handles.rL10bp_138,'Enable','Off');  
            case 11
                set(handles.cL11bp_138,'Enable','On');
                set(handles.dL11_138,'Enable','On');
                set(handles.cL11_138,'Enable','Off');
                set(handles.rL11bp_138,'Enable','Off');                 
        end
    else
        switch(i)
            case 1
                set(handles.cL1bp_138,'Enable','Off');
                set(handles.dL1_138,'Enable','Off');
                set(handles.cL1_138,'Enable','On');
                set(handles.rL1bp_138,'Enable','Off');
            case 2
                set(handles.cL2bp_138,'Enable','Off');
                set(handles.dL2_138,'Enable','Off');
                set(handles.cL2_138,'Enable','On');
                set(handles.rL2bp_138,'Enable','Off');   
            case 3
                set(handles.cL3bp_138,'Enable','Off');
                set(handles.dL3_138,'Enable','Off');
                set(handles.cL3_138,'Enable','On');
                set(handles.rL3bp_138,'Enable','Off'); 
            case 4
                set(handles.cL4bp_138,'Enable','Off');
                set(handles.dL4_138,'Enable','Off');
                set(handles.cL4_138,'Enable','On');
                set(handles.rL4bp_138,'Enable','Off');                  
            case 5
                set(handles.cL5bp_138,'Enable','Off');
                set(handles.dL5_138,'Enable','Off');
                set(handles.cL5_138,'Enable','On');
                set(handles.rL5bp_138,'Enable','Off');                  
            case 6
                set(handles.cL6bp_138,'Enable','Off');
                set(handles.dL6_138,'Enable','Off');
                set(handles.rL6bp_138,'Enable','Off');
                set(handles.cL6_138,'Enable','On');
            case 7
                set(handles.cL7bp_138,'Enable','Off');
                set(handles.dL7_138,'Enable','Off');  
                set(handles.cL7_138,'Enable','On');
                set(handles.rL7bp_138,'Enable','Off');
            case 8
                set(handles.cL8bp_138,'Enable','Off');
                set(handles.dL8_138,'Enable','Off'); 
                set(handles.cL8_138,'Enable','On');
                set(handles.rL8bp_138,'Enable','Off');                
            case 9
                set(handles.cL9bp_138,'Enable','Off');
                set(handles.dL9_138,'Enable','Off'); 
                set(handles.cL9_138,'Enable','On');
                set(handles.rL9bp_138,'Enable','Off');                   
            case 10
                set(handles.cL10bp_138,'Enable','Off');
                set(handles.dL10_138,'Enable','Off'); 
                set(handles.cL10_138,'Enable','On');
                set(handles.rL10bp_138,'Enable','Off');                   
            case 11
                set(handles.cL11bp_138,'Enable','Off');
                set(handles.dL11_138,'Enable','Off'); 
                set(handles.cL11_138,'Enable','On');
                set(handles.rL11bp_138,'Enable','Off');                   
        end
        
    end
end


% --------------------------------------------------------------------
function cL4_138_Callback(hObject, eventdata, handles)
global byPassActivo1 estado;
for i=1:4
    bypass =  strcat('dl',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes4);
    pause(2);
end
set(handles.cL4_138,'Enable','Off');
set(handles.dL4_138,'Enable','On');
estado(4)=1;
if(byPassActivo1==1)
    set(handles.cL4bp_138,'Enable','Off');
else
    set(handles.cL4bp_138,'Enable','On');
end
set(handles.rL4bp_138,'Enable','Off');


% --------------------------------------------------------------------
function dL4_138_Callback(hObject, eventdata, handles)
global estado;
for i=4:7
    bypass =  strcat('dl',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes4);
    pause(2);
end
estado(4)=0;
set(handles.cL4_138,'Enable','On');
set(handles.dL4_138,'Enable','Off');
set(handles.cL4bp_138,'Enable','Off');
set(handles.rL4bp_138,'Enable','Off');


% --------------------------------------------------------------------
function cL4bp_138_Callback(hObject, eventdata, handles)
%Conectar con ByPass L4
global byPassActivo1;
byPassActivo1=1;
pause(2)    
bypass =  strcat('dt1.png');
imshow(bypass,'Parent',handles.axes4);
for i=1:4
    bypass =  strcat('bp3',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes12);
    pause(2)
end
for i=2:4
    bypass =  strcat('dt',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes4);
    pause(2)
end
set(handles.cL4_138,'Enable','Off');
set(handles.dL4_138,'Enable','Off');
set(handles.cL4bp_138,'Enable','Off');
set(handles.rL4bp_138,'Enable','On');
%Deshabilitar Otros
set(handles.cL2bp_138,'Enable','Off');
set(handles.cL1bp_138,'Enable','Off');
set(handles.cL3bp_138,'Enable','Off');
set(handles.cL5bp_138,'Enable','Off');
set(handles.cL6bp_138,'Enable','Off');
set(handles.cL7bp_138,'Enable','Off');
set(handles.cL8bp_138,'Enable','Off');
set(handles.cL9bp_138,'Enable','Off');
set(handles.cL10bp_138,'Enable','Off');
set(handles.cL11bp_138,'Enable','Off');

% --------------------------------------------------------------------
function rL4bp_138_Callback(hObject, eventdata, handles)
%Reposición de Línea 4 por su ByPass
global byPassActivo1 estado;
byPassActivo1=0;
for i=4:7
    bypass =  strcat('dt',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes4);
    pause(2)
end
for i=5:7
    bypass =  strcat('bp3',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes12);
    pause(2)
end
bypass =  'dl4.png';
imshow(bypass,'Parent',handles.axes4);
set(handles.cL4_138,'Enable','Off');
set(handles.dL4_138,'Enable','On');
set(handles.cL4bp_138,'Enable','On');
set(handles.rL4bp_138,'Enable','Off');
for i=1:11
    if(estado(i)==1)
        switch(i)
            case 1
                set(handles.cL1bp_138,'Enable','On');
                set(handles.dL1_138,'Enable','On');
                set(handles.cL1_138,'Enable','Off');
                set(handles.rL1bp_138,'Enable','Off');
            case 2
                set(handles.cL2bp_138,'Enable','On');
                set(handles.dL2_138,'Enable','On');
                set(handles.cL2_138,'Enable','Off');
                set(handles.rL2bp_138,'Enable','Off');   
            case 3
                set(handles.cL3bp_138,'Enable','On');
                set(handles.dL3_138,'Enable','On');
                set(handles.cL3_138,'Enable','Off');
                set(handles.rL3bp_138,'Enable','Off'); 
            case 4
                set(handles.cL4bp_138,'Enable','On');
                set(handles.dL4_138,'Enable','On');
                set(handles.cL4_138,'Enable','Off');
                set(handles.rL4bp_138,'Enable','Off');
            case 5
                set(handles.cL5bp_138,'Enable','On');
                set(handles.dL5_138,'Enable','On');
                set(handles.cL5_138,'Enable','Off');
                set(handles.rL5bp_138,'Enable','Off');                 
            case 6
                set(handles.cL6bp_138,'Enable','On');
                set(handles.dL6_138,'Enable','On');
                set(handles.rL6bp_138,'Enable','Off');
                set(handles.cL6_138,'Enable','Off');
            case 7
                set(handles.cL7bp_138,'Enable','On');
                set(handles.dL7_138,'Enable','On');  
                set(handles.cL7_138,'Enable','Off');
                set(handles.rL7bp_138,'Enable','Off');
            case 8
                set(handles.cL8bp_138,'Enable','On');
                set(handles.dL8_138,'Enable','On'); 
                set(handles.cL8_138,'Enable','Off');
                set(handles.rL8bp_138,'Enable','Off'); 
            case 9
                set(handles.cL9bp_138,'Enable','On');
                set(handles.dL9_138,'Enable','On');
                set(handles.cL9_138,'Enable','Off');
                set(handles.rL9bp_138,'Enable','Off');
            case 10
                set(handles.cL10bp_138,'Enable','On');
                set(handles.dL10_138,'Enable','On');
                set(handles.cL10_138,'Enable','Off');
                set(handles.rL10bp_138,'Enable','Off');  
            case 11
                set(handles.cL11bp_138,'Enable','On');
                set(handles.dL11_138,'Enable','On');
                set(handles.cL11_138,'Enable','Off');
                set(handles.rL11bp_138,'Enable','Off');                 
        end
    else
        switch(i)
            case 1
                set(handles.cL1bp_138,'Enable','Off');
                set(handles.dL1_138,'Enable','Off');
                set(handles.cL1_138,'Enable','On');
                set(handles.rL1bp_138,'Enable','Off');
            case 2
                set(handles.cL2bp_138,'Enable','Off');
                set(handles.dL2_138,'Enable','Off');
                set(handles.cL2_138,'Enable','On');
                set(handles.rL2bp_138,'Enable','Off');   
            case 3
                set(handles.cL3bp_138,'Enable','Off');
                set(handles.dL3_138,'Enable','Off');
                set(handles.cL3_138,'Enable','On');
                set(handles.rL3bp_138,'Enable','Off'); 
            case 4
                set(handles.cL4bp_138,'Enable','Off');
                set(handles.dL4_138,'Enable','Off');
                set(handles.cL4_138,'Enable','On');
                set(handles.rL4bp_138,'Enable','Off');                  
            case 5
                set(handles.cL5bp_138,'Enable','Off');
                set(handles.dL5_138,'Enable','Off');
                set(handles.cL5_138,'Enable','On');
                set(handles.rL5bp_138,'Enable','Off');                  
            case 6
                set(handles.cL6bp_138,'Enable','Off');
                set(handles.dL6_138,'Enable','Off');
                set(handles.rL6bp_138,'Enable','Off');
                set(handles.cL6_138,'Enable','On');
            case 7
                set(handles.cL7bp_138,'Enable','Off');
                set(handles.dL7_138,'Enable','Off');  
                set(handles.cL7_138,'Enable','On');
                set(handles.rL7bp_138,'Enable','Off');
            case 8
                set(handles.cL8bp_138,'Enable','Off');
                set(handles.dL8_138,'Enable','Off'); 
                set(handles.cL8_138,'Enable','On');
                set(handles.rL8bp_138,'Enable','Off');                
            case 9
                set(handles.cL9bp_138,'Enable','Off');
                set(handles.dL9_138,'Enable','Off'); 
                set(handles.cL9_138,'Enable','On');
                set(handles.rL9bp_138,'Enable','Off');                   
            case 10
                set(handles.cL10bp_138,'Enable','Off');
                set(handles.dL10_138,'Enable','Off'); 
                set(handles.cL10_138,'Enable','On');
                set(handles.rL10bp_138,'Enable','Off');                   
            case 11
                set(handles.cL11bp_138,'Enable','Off');
                set(handles.dL11_138,'Enable','Off'); 
                set(handles.cL11_138,'Enable','On');
                set(handles.rL11bp_138,'Enable','Off');                   
        end
        
    end
end


% --------------------------------------------------------------------
function cL5_138_Callback(hObject, eventdata, handles)
global byPassActivo1 estado;
for i=1:4
    bypass =  strcat('dl',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes5);
    pause(2);
end
set(handles.cL5_138,'Enable','Off');
set(handles.dL5_138,'Enable','On');
estado(5)=1;
if(byPassActivo1==1)
    set(handles.cL5bp_138,'Enable','Off');
else
    set(handles.cL5bp_138,'Enable','On');
end
set(handles.rL5bp_138,'Enable','Off');


% --------------------------------------------------------------------
function dL5_138_Callback(hObject, eventdata, handles)
global estado;
for i=4:7
    bypass =  strcat('dl',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes5);
    pause(2);
end
estado(5)=0;
set(handles.cL5_138,'Enable','On');
set(handles.dL5_138,'Enable','Off');
set(handles.cL5bp_138,'Enable','Off');
set(handles.rL5bp_138,'Enable','Off');

function cL5bp_138_Callback(hObject, eventdata, handles)
%Conectar con ByPass L5
global byPassActivo1;
byPassActivo1=1;
pause(2)    
bypass =  strcat('dt1.png');
imshow(bypass,'Parent',handles.axes5);
for i=1:4
    bypass =  strcat('bp3',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes12);
    pause(2)
end
for i=2:4
    bypass =  strcat('dt',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes5);
    pause(2)
end
set(handles.cL5_138,'Enable','Off');
set(handles.dL5_138,'Enable','Off');
set(handles.cL5bp_138,'Enable','Off');
set(handles.rL5bp_138,'Enable','On');
%Deshabilitar Otros
set(handles.cL2bp_138,'Enable','Off');
set(handles.cL1bp_138,'Enable','Off');
set(handles.cL3bp_138,'Enable','Off');
set(handles.cL4bp_138,'Enable','Off');
set(handles.cL6bp_138,'Enable','Off');
set(handles.cL7bp_138,'Enable','Off');
set(handles.cL8bp_138,'Enable','Off');
set(handles.cL9bp_138,'Enable','Off');
set(handles.cL10bp_138,'Enable','Off');
set(handles.cL11bp_138,'Enable','Off');

% --------------------------------------------------------------------
function rL5bp_138_Callback(hObject, eventdata, handles)
%Reposición de Línea 5 por su ByPass
global byPassActivo1 estado;
byPassActivo1=0;
for i=4:7
    bypass =  strcat('dt',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes5);
    pause(2)
end
for i=5:7
    bypass =  strcat('bp3',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes12);
    pause(2)
end
bypass =  'dl4.png';
imshow(bypass,'Parent',handles.axes5);
set(handles.cL5_138,'Enable','Off');
set(handles.dL5_138,'Enable','On');
set(handles.cL5bp_138,'Enable','On');
set(handles.rL5bp_138,'Enable','Off');
for i=1:11
    if(estado(i)==1)
        switch(i)
            case 1
                set(handles.cL1bp_138,'Enable','On');
                set(handles.dL1_138,'Enable','On');
                set(handles.cL1_138,'Enable','Off');
                set(handles.rL1bp_138,'Enable','Off');
            case 2
                set(handles.cL2bp_138,'Enable','On');
                set(handles.dL2_138,'Enable','On');
                set(handles.cL2_138,'Enable','Off');
                set(handles.rL2bp_138,'Enable','Off');   
            case 3
                set(handles.cL3bp_138,'Enable','On');
                set(handles.dL3_138,'Enable','On');
                set(handles.cL3_138,'Enable','Off');
                set(handles.rL3bp_138,'Enable','Off'); 
            case 4
                set(handles.cL4bp_138,'Enable','On');
                set(handles.dL4_138,'Enable','On');
                set(handles.cL4_138,'Enable','Off');
                set(handles.rL4bp_138,'Enable','Off');
            case 5
                set(handles.cL5bp_138,'Enable','On');
                set(handles.dL5_138,'Enable','On');
                set(handles.cL5_138,'Enable','Off');
                set(handles.rL5bp_138,'Enable','Off');                 
            case 6
                set(handles.cL6bp_138,'Enable','On');
                set(handles.dL6_138,'Enable','On');
                set(handles.rL6bp_138,'Enable','Off');
                set(handles.cL6_138,'Enable','Off');
            case 7
                set(handles.cL7bp_138,'Enable','On');
                set(handles.dL7_138,'Enable','On');  
                set(handles.cL7_138,'Enable','Off');
                set(handles.rL7bp_138,'Enable','Off');
            case 8
                set(handles.cL8bp_138,'Enable','On');
                set(handles.dL8_138,'Enable','On'); 
                set(handles.cL8_138,'Enable','Off');
                set(handles.rL8bp_138,'Enable','Off'); 
            case 9
                set(handles.cL9bp_138,'Enable','On');
                set(handles.dL9_138,'Enable','On');
                set(handles.cL9_138,'Enable','Off');
                set(handles.rL9bp_138,'Enable','Off');
            case 10
                set(handles.cL10bp_138,'Enable','On');
                set(handles.dL10_138,'Enable','On');
                set(handles.cL10_138,'Enable','Off');
                set(handles.rL10bp_138,'Enable','Off');  
            case 11
                set(handles.cL11bp_138,'Enable','On');
                set(handles.dL11_138,'Enable','On');
                set(handles.cL11_138,'Enable','Off');
                set(handles.rL11bp_138,'Enable','Off');                 
        end
    else
        switch(i)
            case 1
                set(handles.cL1bp_138,'Enable','Off');
                set(handles.dL1_138,'Enable','Off');
                set(handles.cL1_138,'Enable','On');
                set(handles.rL1bp_138,'Enable','Off');
            case 2
                set(handles.cL2bp_138,'Enable','Off');
                set(handles.dL2_138,'Enable','Off');
                set(handles.cL2_138,'Enable','On');
                set(handles.rL2bp_138,'Enable','Off');   
            case 3
                set(handles.cL3bp_138,'Enable','Off');
                set(handles.dL3_138,'Enable','Off');
                set(handles.cL3_138,'Enable','On');
                set(handles.rL3bp_138,'Enable','Off'); 
            case 4
                set(handles.cL4bp_138,'Enable','Off');
                set(handles.dL4_138,'Enable','Off');
                set(handles.cL4_138,'Enable','On');
                set(handles.rL4bp_138,'Enable','Off');                  
            case 5
                set(handles.cL5bp_138,'Enable','Off');
                set(handles.dL5_138,'Enable','Off');
                set(handles.cL5_138,'Enable','On');
                set(handles.rL5bp_138,'Enable','Off');                  
            case 6
                set(handles.cL6bp_138,'Enable','Off');
                set(handles.dL6_138,'Enable','Off');
                set(handles.rL6bp_138,'Enable','Off');
                set(handles.cL6_138,'Enable','On');
            case 7
                set(handles.cL7bp_138,'Enable','Off');
                set(handles.dL7_138,'Enable','Off');  
                set(handles.cL7_138,'Enable','On');
                set(handles.rL7bp_138,'Enable','Off');
            case 8
                set(handles.cL8bp_138,'Enable','Off');
                set(handles.dL8_138,'Enable','Off'); 
                set(handles.cL8_138,'Enable','On');
                set(handles.rL8bp_138,'Enable','Off');                
            case 9
                set(handles.cL9bp_138,'Enable','Off');
                set(handles.dL9_138,'Enable','Off'); 
                set(handles.cL9_138,'Enable','On');
                set(handles.rL9bp_138,'Enable','Off');                   
            case 10
                set(handles.cL10bp_138,'Enable','Off');
                set(handles.dL10_138,'Enable','Off'); 
                set(handles.cL10_138,'Enable','On');
                set(handles.rL10bp_138,'Enable','Off');                   
            case 11
                set(handles.cL11bp_138,'Enable','Off');
                set(handles.dL11_138,'Enable','Off'); 
                set(handles.cL11_138,'Enable','On');
                set(handles.rL11bp_138,'Enable','Off');                   
        end
        
    end
end



% --------------------------------------------------------------------
function cL6_138_Callback(hObject, eventdata, handles)
global byPassActivo1 estado;
for i=1:4
    bypass =  strcat('dl',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes6);
    pause(2);
end
set(handles.cL6_138,'Enable','Off');
set(handles.dL6_138,'Enable','On');
estado(6)=1;
if(byPassActivo1==1)
    set(handles.cL6bp_138,'Enable','Off');
else
    set(handles.cL6bp_138,'Enable','On');
end
set(handles.rL6bp_138,'Enable','Off');


% --------------------------------------------------------------------
function dL6_138_Callback(hObject, eventdata, handles)
global estado;
for i=4:7
    bypass =  strcat('dl',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes6);
    pause(2);
end
estado(6)=0;
set(handles.cL6_138,'Enable','On');
set(handles.dL6_138,'Enable','Off');
set(handles.cL6bp_138,'Enable','Off');
set(handles.rL6bp_138,'Enable','Off');

function cL6bp_138_Callback(hObject, eventdata, handles)
%Conectar con ByPass L6
global byPassActivo1;
byPassActivo1=1;
pause(2)    
bypass =  strcat('dt1.png');
imshow(bypass,'Parent',handles.axes6);
for i=1:4
    bypass =  strcat('bp3',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes12);
    pause(2)
end
for i=2:4
    bypass =  strcat('dt',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes6);
    pause(2)
end
set(handles.cL6_138,'Enable','Off');
set(handles.dL6_138,'Enable','Off');
set(handles.cL6bp_138,'Enable','Off');
set(handles.rL6bp_138,'Enable','On');
%Deshabilitar Otros
set(handles.cL2bp_138,'Enable','Off');
set(handles.cL1bp_138,'Enable','Off');
set(handles.cL3bp_138,'Enable','Off');
set(handles.cL5bp_138,'Enable','Off');
set(handles.cL4bp_138,'Enable','Off');
set(handles.cL7bp_138,'Enable','Off');
set(handles.cL8bp_138,'Enable','Off');
set(handles.cL9bp_138,'Enable','Off');
set(handles.cL10bp_138,'Enable','Off');
set(handles.cL11bp_138,'Enable','Off');

% --------------------------------------------------------------------
function rL6bp_138_Callback(hObject, eventdata, handles)
%Reposición de Línea 6 por su ByPass
global byPassActivo1 estado;
byPassActivo1=0;
for i=4:7
    bypass =  strcat('dt',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes6);
    pause(2)
end
for i=5:7
    bypass =  strcat('bp3',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes12);
    pause(2)
end
bypass =  'dl4.png';
imshow(bypass,'Parent',handles.axes6);
set(handles.cL6_138,'Enable','Off');
set(handles.dL6_138,'Enable','On');
set(handles.cL6bp_138,'Enable','On');
set(handles.rL6bp_138,'Enable','Off');
for i=1:11
    if(estado(i)==1)
        switch(i)
            case 1
                set(handles.cL1bp_138,'Enable','On');
                set(handles.dL1_138,'Enable','On');
                set(handles.cL1_138,'Enable','Off');
                set(handles.rL1bp_138,'Enable','Off');
            case 2
                set(handles.cL2bp_138,'Enable','On');
                set(handles.dL2_138,'Enable','On');
                set(handles.cL2_138,'Enable','Off');
                set(handles.rL2bp_138,'Enable','Off');   
            case 3
                set(handles.cL3bp_138,'Enable','On');
                set(handles.dL3_138,'Enable','On');
                set(handles.cL3_138,'Enable','Off');
                set(handles.rL3bp_138,'Enable','Off'); 
            case 4
                set(handles.cL4bp_138,'Enable','On');
                set(handles.dL4_138,'Enable','On');
                set(handles.cL4_138,'Enable','Off');
                set(handles.rL4bp_138,'Enable','Off');
            case 5
                set(handles.cL5bp_138,'Enable','On');
                set(handles.dL5_138,'Enable','On');
                set(handles.cL5_138,'Enable','Off');
                set(handles.rL5bp_138,'Enable','Off');                 
            case 6
                set(handles.cL6bp_138,'Enable','On');
                set(handles.dL6_138,'Enable','On');
                set(handles.rL6bp_138,'Enable','Off');
                set(handles.cL6_138,'Enable','Off');
            case 7
                set(handles.cL7bp_138,'Enable','On');
                set(handles.dL7_138,'Enable','On');  
                set(handles.cL7_138,'Enable','Off');
                set(handles.rL7bp_138,'Enable','Off');
            case 8
                set(handles.cL8bp_138,'Enable','On');
                set(handles.dL8_138,'Enable','On'); 
                set(handles.cL8_138,'Enable','Off');
                set(handles.rL8bp_138,'Enable','Off'); 
            case 9
                set(handles.cL9bp_138,'Enable','On');
                set(handles.dL9_138,'Enable','On');
                set(handles.cL9_138,'Enable','Off');
                set(handles.rL9bp_138,'Enable','Off');
            case 10
                set(handles.cL10bp_138,'Enable','On');
                set(handles.dL10_138,'Enable','On');
                set(handles.cL10_138,'Enable','Off');
                set(handles.rL10bp_138,'Enable','Off');  
            case 11
                set(handles.cL11bp_138,'Enable','On');
                set(handles.dL11_138,'Enable','On');
                set(handles.cL11_138,'Enable','Off');
                set(handles.rL11bp_138,'Enable','Off');                 
        end
    else
        switch(i)
            case 1
                set(handles.cL1bp_138,'Enable','Off');
                set(handles.dL1_138,'Enable','Off');
                set(handles.cL1_138,'Enable','On');
                set(handles.rL1bp_138,'Enable','Off');
            case 2
                set(handles.cL2bp_138,'Enable','Off');
                set(handles.dL2_138,'Enable','Off');
                set(handles.cL2_138,'Enable','On');
                set(handles.rL2bp_138,'Enable','Off');   
            case 3
                set(handles.cL3bp_138,'Enable','Off');
                set(handles.dL3_138,'Enable','Off');
                set(handles.cL3_138,'Enable','On');
                set(handles.rL3bp_138,'Enable','Off'); 
            case 4
                set(handles.cL4bp_138,'Enable','Off');
                set(handles.dL4_138,'Enable','Off');
                set(handles.cL4_138,'Enable','On');
                set(handles.rL4bp_138,'Enable','Off');                  
            case 5
                set(handles.cL5bp_138,'Enable','Off');
                set(handles.dL5_138,'Enable','Off');
                set(handles.cL5_138,'Enable','On');
                set(handles.rL5bp_138,'Enable','Off');                  
            case 6
                set(handles.cL6bp_138,'Enable','Off');
                set(handles.dL6_138,'Enable','Off');
                set(handles.rL6bp_138,'Enable','Off');
                set(handles.cL6_138,'Enable','On');
            case 7
                set(handles.cL7bp_138,'Enable','Off');
                set(handles.dL7_138,'Enable','Off');  
                set(handles.cL7_138,'Enable','On');
                set(handles.rL7bp_138,'Enable','Off');
            case 8
                set(handles.cL8bp_138,'Enable','Off');
                set(handles.dL8_138,'Enable','Off'); 
                set(handles.cL8_138,'Enable','On');
                set(handles.rL8bp_138,'Enable','Off');                
            case 9
                set(handles.cL9bp_138,'Enable','Off');
                set(handles.dL9_138,'Enable','Off'); 
                set(handles.cL9_138,'Enable','On');
                set(handles.rL9bp_138,'Enable','Off');                   
            case 10
                set(handles.cL10bp_138,'Enable','Off');
                set(handles.dL10_138,'Enable','Off'); 
                set(handles.cL10_138,'Enable','On');
                set(handles.rL10bp_138,'Enable','Off');                   
            case 11
                set(handles.cL11bp_138,'Enable','Off');
                set(handles.dL11_138,'Enable','Off'); 
                set(handles.cL11_138,'Enable','On');
                set(handles.rL11bp_138,'Enable','Off');                   
        end
        
    end
end

% --------------------------------------------------------------------
function cL7_138_Callback(hObject, eventdata, handles)
global byPassActivo1 estado;
for i=1:4
    bypass =  strcat('dl',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes7);
    pause(2);
end
set(handles.cL7_138,'Enable','Off');
set(handles.dL7_138,'Enable','On');
estado(7)=1;
if(byPassActivo1==1)
    set(handles.cL7bp_138,'Enable','Off');
else
    set(handles.cL7bp_138,'Enable','On');
end
set(handles.rL7bp_138,'Enable','Off');


% --------------------------------------------------------------------
function dL7_138_Callback(hObject, eventdata, handles)
global estado; 
for i=4:7
    bypass =  strcat('dl',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes7);
    pause(2);
end
estado(7)=0;
set(handles.cL7_138,'Enable','On');
set(handles.dL7_138,'Enable','Off');
set(handles.cL7bp_138,'Enable','Off');
set(handles.rL7bp_138,'Enable','Off');


% --------------------------------------------------------------------
function cL7bp_138_Callback(hObject, eventdata, handles)
%Conectar con ByPass L7
global byPassActivo1;
byPassActivo1=1;
pause(2)    
bypass =  strcat('dt1.png');
imshow(bypass,'Parent',handles.axes7);
for i=1:4
    bypass =  strcat('bp3',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes12);
    pause(2)
end
for i=2:4
    bypass =  strcat('dt',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes7);
    pause(2)
end
set(handles.cL7_138,'Enable','Off');
set(handles.dL7_138,'Enable','Off');
set(handles.cL7bp_138,'Enable','Off');
set(handles.rL7bp_138,'Enable','On');
%Deshabilitar Otros
set(handles.cL2bp_138,'Enable','Off');
set(handles.cL1bp_138,'Enable','Off');
set(handles.cL3bp_138,'Enable','Off');
set(handles.cL5bp_138,'Enable','Off');
set(handles.cL6bp_138,'Enable','Off');
set(handles.cL4bp_138,'Enable','Off');
set(handles.cL8bp_138,'Enable','Off');
set(handles.cL9bp_138,'Enable','Off');
set(handles.cL10bp_138,'Enable','Off');
set(handles.cL11bp_138,'Enable','Off');

% --------------------------------------------------------------------
function rL7bp_138_Callback(hObject, eventdata, handles)
%Reposición de Línea 7 por su ByPass
global byPassActivo1 estado;
byPassActivo1=0;
for i=4:7
    bypass =  strcat('dt',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes7);
    pause(2)
end
for i=5:7
    bypass =  strcat('bp3',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes12);
    pause(2)
end
bypass =  'dl4.png';
imshow(bypass,'Parent',handles.axes7);
set(handles.cL7_138,'Enable','Off');
set(handles.dL7_138,'Enable','On');
set(handles.cL7bp_138,'Enable','On');
set(handles.rL7bp_138,'Enable','Off');
for i=1:11
    if(estado(i)==1)
        switch(i)
            case 1
                set(handles.cL1bp_138,'Enable','On');
                set(handles.dL1_138,'Enable','On');
                set(handles.cL1_138,'Enable','Off');
                set(handles.rL1bp_138,'Enable','Off');
            case 2
                set(handles.cL2bp_138,'Enable','On');
                set(handles.dL2_138,'Enable','On');
                set(handles.cL2_138,'Enable','Off');
                set(handles.rL2bp_138,'Enable','Off');   
            case 3
                set(handles.cL3bp_138,'Enable','On');
                set(handles.dL3_138,'Enable','On');
                set(handles.cL3_138,'Enable','Off');
                set(handles.rL3bp_138,'Enable','Off'); 
            case 4
                set(handles.cL4bp_138,'Enable','On');
                set(handles.dL4_138,'Enable','On');
                set(handles.cL4_138,'Enable','Off');
                set(handles.rL4bp_138,'Enable','Off');
            case 5
                set(handles.cL5bp_138,'Enable','On');
                set(handles.dL5_138,'Enable','On');
                set(handles.cL5_138,'Enable','Off');
                set(handles.rL5bp_138,'Enable','Off');                 
            case 6
                set(handles.cL6bp_138,'Enable','On');
                set(handles.dL6_138,'Enable','On');
                set(handles.rL6bp_138,'Enable','Off');
                set(handles.cL6_138,'Enable','Off');
            case 7
                set(handles.cL7bp_138,'Enable','On');
                set(handles.dL7_138,'Enable','On');  
                set(handles.cL7_138,'Enable','Off');
                set(handles.rL7bp_138,'Enable','Off');
            case 8
                set(handles.cL8bp_138,'Enable','On');
                set(handles.dL8_138,'Enable','On'); 
                set(handles.cL8_138,'Enable','Off');
                set(handles.rL8bp_138,'Enable','Off'); 
            case 9
                set(handles.cL9bp_138,'Enable','On');
                set(handles.dL9_138,'Enable','On');
                set(handles.cL9_138,'Enable','Off');
                set(handles.rL9bp_138,'Enable','Off');
            case 10
                set(handles.cL10bp_138,'Enable','On');
                set(handles.dL10_138,'Enable','On');
                set(handles.cL10_138,'Enable','Off');
                set(handles.rL10bp_138,'Enable','Off');  
            case 11
                set(handles.cL11bp_138,'Enable','On');
                set(handles.dL11_138,'Enable','On');
                set(handles.cL11_138,'Enable','Off');
                set(handles.rL11bp_138,'Enable','Off');                 
        end
    else
        switch(i)
            case 1
                set(handles.cL1bp_138,'Enable','Off');
                set(handles.dL1_138,'Enable','Off');
                set(handles.cL1_138,'Enable','On');
                set(handles.rL1bp_138,'Enable','Off');
            case 2
                set(handles.cL2bp_138,'Enable','Off');
                set(handles.dL2_138,'Enable','Off');
                set(handles.cL2_138,'Enable','On');
                set(handles.rL2bp_138,'Enable','Off');   
            case 3
                set(handles.cL3bp_138,'Enable','Off');
                set(handles.dL3_138,'Enable','Off');
                set(handles.cL3_138,'Enable','On');
                set(handles.rL3bp_138,'Enable','Off'); 
            case 4
                set(handles.cL4bp_138,'Enable','Off');
                set(handles.dL4_138,'Enable','Off');
                set(handles.cL4_138,'Enable','On');
                set(handles.rL4bp_138,'Enable','Off');                  
            case 5
                set(handles.cL5bp_138,'Enable','Off');
                set(handles.dL5_138,'Enable','Off');
                set(handles.cL5_138,'Enable','On');
                set(handles.rL5bp_138,'Enable','Off');                  
            case 6
                set(handles.cL6bp_138,'Enable','Off');
                set(handles.dL6_138,'Enable','Off');
                set(handles.rL6bp_138,'Enable','Off');
                set(handles.cL6_138,'Enable','On');
            case 7
                set(handles.cL7bp_138,'Enable','Off');
                set(handles.dL7_138,'Enable','Off');  
                set(handles.cL7_138,'Enable','On');
                set(handles.rL7bp_138,'Enable','Off');
            case 8
                set(handles.cL8bp_138,'Enable','Off');
                set(handles.dL8_138,'Enable','Off'); 
                set(handles.cL8_138,'Enable','On');
                set(handles.rL8bp_138,'Enable','Off');                
            case 9
                set(handles.cL9bp_138,'Enable','Off');
                set(handles.dL9_138,'Enable','Off'); 
                set(handles.cL9_138,'Enable','On');
                set(handles.rL9bp_138,'Enable','Off');                   
            case 10
                set(handles.cL10bp_138,'Enable','Off');
                set(handles.dL10_138,'Enable','Off'); 
                set(handles.cL10_138,'Enable','On');
                set(handles.rL10bp_138,'Enable','Off');                   
            case 11
                set(handles.cL11bp_138,'Enable','Off');
                set(handles.dL11_138,'Enable','Off'); 
                set(handles.cL11_138,'Enable','On');
                set(handles.rL11bp_138,'Enable','Off');                   
        end
        
    end
end

% --------------------------------------------------------------------
function cL8_138_Callback(hObject, eventdata, handles)
global byPassActivo1 estado;
for i=1:4
    bypass =  strcat('dl',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes8);
    pause(2);
end
set(handles.cL8_138,'Enable','Off');
set(handles.dL8_138,'Enable','On');
estado(8)=1;
if(byPassActivo1==1)
    set(handles.cL8bp_138,'Enable','Off');
else
    set(handles.cL8bp_138,'Enable','On');
end
set(handles.rL8bp_138,'Enable','Off');


% --------------------------------------------------------------------
function dL8_138_Callback(hObject, eventdata, handles)
global estado;
for i=4:7
    bypass =  strcat('dl',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes8);
    pause(2);
end
estado(8)=0;
set(handles.cL8_138,'Enable','On');
set(handles.dL8_138,'Enable','Off');
set(handles.cL8bp_138,'Enable','Off');
set(handles.rL8bp_138,'Enable','Off');


% --------------------------------------------------------------------
function cL8bp_138_Callback(hObject, eventdata, handles)
%Conectar con ByPass L8
global byPassActivo1;
byPassActivo1=1;
pause(2)    
bypass =  strcat('dt1.png');
imshow(bypass,'Parent',handles.axes8);
for i=1:4
    bypass =  strcat('bp3',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes12);
    pause(2)
end
for i=2:4
    bypass =  strcat('dt',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes8);
    pause(2)
end
set(handles.cL8_138,'Enable','Off');
set(handles.dL8_138,'Enable','Off');
set(handles.cL8bp_138,'Enable','Off');
set(handles.rL8bp_138,'Enable','On');
%Deshabilitar Otros
set(handles.cL2bp_138,'Enable','Off');
set(handles.cL1bp_138,'Enable','Off');
set(handles.cL3bp_138,'Enable','Off');
set(handles.cL5bp_138,'Enable','Off');
set(handles.cL6bp_138,'Enable','Off');
set(handles.cL7bp_138,'Enable','Off');
set(handles.cL4bp_138,'Enable','Off');
set(handles.cL9bp_138,'Enable','Off');
set(handles.cL10bp_138,'Enable','Off');
set(handles.cL11bp_138,'Enable','Off');

% --------------------------------------------------------------------
function rL8bp_138_Callback(hObject, eventdata, handles)
%Reposición de Línea 8 por su ByPass
global byPassActivo1 estado;
byPassActivo1=0;
for i=4:7
    bypass =  strcat('dt',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes8);
    pause(2)
end
for i=5:7
    bypass =  strcat('bp3',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes12);
    pause(2)
end
bypass =  'dl4.png';
imshow(bypass,'Parent',handles.axes8);
set(handles.cL8_138,'Enable','Off');
set(handles.dL8_138,'Enable','On');
set(handles.cL8bp_138,'Enable','On');
set(handles.rL8bp_138,'Enable','Off');
for i=1:11
    if(estado(i)==1)
        switch(i)
            case 1
                set(handles.cL1bp_138,'Enable','On');
                set(handles.dL1_138,'Enable','On');
                set(handles.cL1_138,'Enable','Off');
                set(handles.rL1bp_138,'Enable','Off');
            case 2
                set(handles.cL2bp_138,'Enable','On');
                set(handles.dL2_138,'Enable','On');
                set(handles.cL2_138,'Enable','Off');
                set(handles.rL2bp_138,'Enable','Off');   
            case 3
                set(handles.cL3bp_138,'Enable','On');
                set(handles.dL3_138,'Enable','On');
                set(handles.cL3_138,'Enable','Off');
                set(handles.rL3bp_138,'Enable','Off'); 
            case 4
                set(handles.cL4bp_138,'Enable','On');
                set(handles.dL4_138,'Enable','On');
                set(handles.cL4_138,'Enable','Off');
                set(handles.rL4bp_138,'Enable','Off');
            case 5
                set(handles.cL5bp_138,'Enable','On');
                set(handles.dL5_138,'Enable','On');
                set(handles.cL5_138,'Enable','Off');
                set(handles.rL5bp_138,'Enable','Off');                 
            case 6
                set(handles.cL6bp_138,'Enable','On');
                set(handles.dL6_138,'Enable','On');
                set(handles.rL6bp_138,'Enable','Off');
                set(handles.cL6_138,'Enable','Off');
            case 7
                set(handles.cL7bp_138,'Enable','On');
                set(handles.dL7_138,'Enable','On');  
                set(handles.cL7_138,'Enable','Off');
                set(handles.rL7bp_138,'Enable','Off');
            case 8
                set(handles.cL8bp_138,'Enable','On');
                set(handles.dL8_138,'Enable','On'); 
                set(handles.cL8_138,'Enable','Off');
                set(handles.rL8bp_138,'Enable','Off'); 
            case 9
                set(handles.cL9bp_138,'Enable','On');
                set(handles.dL9_138,'Enable','On');
                set(handles.cL9_138,'Enable','Off');
                set(handles.rL9bp_138,'Enable','Off');
            case 10
                set(handles.cL10bp_138,'Enable','On');
                set(handles.dL10_138,'Enable','On');
                set(handles.cL10_138,'Enable','Off');
                set(handles.rL10bp_138,'Enable','Off');  
            case 11
                set(handles.cL11bp_138,'Enable','On');
                set(handles.dL11_138,'Enable','On');
                set(handles.cL11_138,'Enable','Off');
                set(handles.rL11bp_138,'Enable','Off');                 
        end
    else
        switch(i)
            case 1
                set(handles.cL1bp_138,'Enable','Off');
                set(handles.dL1_138,'Enable','Off');
                set(handles.cL1_138,'Enable','On');
                set(handles.rL1bp_138,'Enable','Off');
            case 2
                set(handles.cL2bp_138,'Enable','Off');
                set(handles.dL2_138,'Enable','Off');
                set(handles.cL2_138,'Enable','On');
                set(handles.rL2bp_138,'Enable','Off');   
            case 3
                set(handles.cL3bp_138,'Enable','Off');
                set(handles.dL3_138,'Enable','Off');
                set(handles.cL3_138,'Enable','On');
                set(handles.rL3bp_138,'Enable','Off'); 
            case 4
                set(handles.cL4bp_138,'Enable','Off');
                set(handles.dL4_138,'Enable','Off');
                set(handles.cL4_138,'Enable','On');
                set(handles.rL4bp_138,'Enable','Off');                  
            case 5
                set(handles.cL5bp_138,'Enable','Off');
                set(handles.dL5_138,'Enable','Off');
                set(handles.cL5_138,'Enable','On');
                set(handles.rL5bp_138,'Enable','Off');                  
            case 6
                set(handles.cL6bp_138,'Enable','Off');
                set(handles.dL6_138,'Enable','Off');
                set(handles.rL6bp_138,'Enable','Off');
                set(handles.cL6_138,'Enable','On');
            case 7
                set(handles.cL7bp_138,'Enable','Off');
                set(handles.dL7_138,'Enable','Off');  
                set(handles.cL7_138,'Enable','On');
                set(handles.rL7bp_138,'Enable','Off');
            case 8
                set(handles.cL8bp_138,'Enable','Off');
                set(handles.dL8_138,'Enable','Off'); 
                set(handles.cL8_138,'Enable','On');
                set(handles.rL8bp_138,'Enable','Off');                
            case 9
                set(handles.cL9bp_138,'Enable','Off');
                set(handles.dL9_138,'Enable','Off'); 
                set(handles.cL9_138,'Enable','On');
                set(handles.rL9bp_138,'Enable','Off');                   
            case 10
                set(handles.cL10bp_138,'Enable','Off');
                set(handles.dL10_138,'Enable','Off'); 
                set(handles.cL10_138,'Enable','On');
                set(handles.rL10bp_138,'Enable','Off');                   
            case 11
                set(handles.cL11bp_138,'Enable','Off');
                set(handles.dL11_138,'Enable','Off'); 
                set(handles.cL11_138,'Enable','On');
                set(handles.rL11bp_138,'Enable','Off');                   
        end
        
    end
end

% --------------------------------------------------------------------
function cL9_138_Callback(hObject, eventdata, handles)
global byPassActivo1 estado;
for i=1:4
    bypass =  strcat('dl',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes9);
    pause(2);
end
set(handles.cL9_138,'Enable','Off');
set(handles.dL9_138,'Enable','On');
estado(9)=1;
if(byPassActivo1==1)
    set(handles.cL9bp_138,'Enable','Off');
else
    set(handles.cL9bp_138,'Enable','On');
end
set(handles.rL9bp_138,'Enable','Off');


% --------------------------------------------------------------------
function dL9_138_Callback(hObject, eventdata, handles)
global estado;
for i=4:7
    bypass =  strcat('dl',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes9);
    pause(2);
end
estado(9)=0;
set(handles.cL9_138,'Enable','On');
set(handles.dL9_138,'Enable','Off');
set(handles.cL9bp_138,'Enable','Off');
set(handles.rL9bp_138,'Enable','Off');

% --------------------------------------------------------------------
function cL9bp_138_Callback(hObject, eventdata, handles)
%Conectar con ByPass L9
global byPassActivo1;
byPassActivo1=1;
pause(2)    
bypass =  strcat('dt1.png');
imshow(bypass,'Parent',handles.axes9);
for i=1:4
    bypass =  strcat('bp3',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes12);
    pause(2)
end
for i=2:4
    bypass =  strcat('dt',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes9);
    pause(2)
end
set(handles.cL9_138,'Enable','Off');
set(handles.dL9_138,'Enable','Off');
set(handles.cL9bp_138,'Enable','Off');
set(handles.rL9bp_138,'Enable','On');
%Deshabilitar Otros
set(handles.cL2bp_138,'Enable','Off');
set(handles.cL1bp_138,'Enable','Off');
set(handles.cL3bp_138,'Enable','Off');
set(handles.cL5bp_138,'Enable','Off');
set(handles.cL6bp_138,'Enable','Off');
set(handles.cL7bp_138,'Enable','Off');
set(handles.cL8bp_138,'Enable','Off');
set(handles.cL4bp_138,'Enable','Off');
set(handles.cL10bp_138,'Enable','Off');
set(handles.cL11bp_138,'Enable','Off');

% --------------------------------------------------------------------
function rL9bp_138_Callback(hObject, eventdata, handles)
%Reposición de Línea 9 por su ByPass
global byPassActivo1 estado;
byPassActivo1=0;
for i=4:7
    bypass =  strcat('dt',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes9);
    pause(2)
end
for i=5:7
    bypass =  strcat('bp3',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes12);
    pause(2)
end
bypass =  'dl4.png';
imshow(bypass,'Parent',handles.axes9);
set(handles.cL9_138,'Enable','Off');
set(handles.dL9_138,'Enable','On');
set(handles.cL9bp_138,'Enable','On');
set(handles.rL9bp_138,'Enable','Off');
for i=1:11
    if(estado(i)==1)
        switch(i)
            case 1
                set(handles.cL1bp_138,'Enable','On');
                set(handles.dL1_138,'Enable','On');
                set(handles.cL1_138,'Enable','Off');
                set(handles.rL1bp_138,'Enable','Off');
            case 2
                set(handles.cL2bp_138,'Enable','On');
                set(handles.dL2_138,'Enable','On');
                set(handles.cL2_138,'Enable','Off');
                set(handles.rL2bp_138,'Enable','Off');   
            case 3
                set(handles.cL3bp_138,'Enable','On');
                set(handles.dL3_138,'Enable','On');
                set(handles.cL3_138,'Enable','Off');
                set(handles.rL3bp_138,'Enable','Off'); 
            case 4
                set(handles.cL4bp_138,'Enable','On');
                set(handles.dL4_138,'Enable','On');
                set(handles.cL4_138,'Enable','Off');
                set(handles.rL4bp_138,'Enable','Off');
            case 5
                set(handles.cL5bp_138,'Enable','On');
                set(handles.dL5_138,'Enable','On');
                set(handles.cL5_138,'Enable','Off');
                set(handles.rL5bp_138,'Enable','Off');                 
            case 6
                set(handles.cL6bp_138,'Enable','On');
                set(handles.dL6_138,'Enable','On');
                set(handles.rL6bp_138,'Enable','Off');
                set(handles.cL6_138,'Enable','Off');
            case 7
                set(handles.cL7bp_138,'Enable','On');
                set(handles.dL7_138,'Enable','On');  
                set(handles.cL7_138,'Enable','Off');
                set(handles.rL7bp_138,'Enable','Off');
            case 8
                set(handles.cL8bp_138,'Enable','On');
                set(handles.dL8_138,'Enable','On'); 
                set(handles.cL8_138,'Enable','Off');
                set(handles.rL8bp_138,'Enable','Off'); 
            case 9
                set(handles.cL9bp_138,'Enable','On');
                set(handles.dL9_138,'Enable','On');
                set(handles.cL9_138,'Enable','Off');
                set(handles.rL9bp_138,'Enable','Off');
            case 10
                set(handles.cL10bp_138,'Enable','On');
                set(handles.dL10_138,'Enable','On');
                set(handles.cL10_138,'Enable','Off');
                set(handles.rL10bp_138,'Enable','Off');  
            case 11
                set(handles.cL11bp_138,'Enable','On');
                set(handles.dL11_138,'Enable','On');
                set(handles.cL11_138,'Enable','Off');
                set(handles.rL11bp_138,'Enable','Off');                 
        end
    else
        switch(i)
            case 1
                set(handles.cL1bp_138,'Enable','Off');
                set(handles.dL1_138,'Enable','Off');
                set(handles.cL1_138,'Enable','On');
                set(handles.rL1bp_138,'Enable','Off');
            case 2
                set(handles.cL2bp_138,'Enable','Off');
                set(handles.dL2_138,'Enable','Off');
                set(handles.cL2_138,'Enable','On');
                set(handles.rL2bp_138,'Enable','Off');   
            case 3
                set(handles.cL3bp_138,'Enable','Off');
                set(handles.dL3_138,'Enable','Off');
                set(handles.cL3_138,'Enable','On');
                set(handles.rL3bp_138,'Enable','Off'); 
            case 4
                set(handles.cL4bp_138,'Enable','Off');
                set(handles.dL4_138,'Enable','Off');
                set(handles.cL4_138,'Enable','On');
                set(handles.rL4bp_138,'Enable','Off');                  
            case 5
                set(handles.cL5bp_138,'Enable','Off');
                set(handles.dL5_138,'Enable','Off');
                set(handles.cL5_138,'Enable','On');
                set(handles.rL5bp_138,'Enable','Off');                  
            case 6
                set(handles.cL6bp_138,'Enable','Off');
                set(handles.dL6_138,'Enable','Off');
                set(handles.rL6bp_138,'Enable','Off');
                set(handles.cL6_138,'Enable','On');
            case 7
                set(handles.cL7bp_138,'Enable','Off');
                set(handles.dL7_138,'Enable','Off');  
                set(handles.cL7_138,'Enable','On');
                set(handles.rL7bp_138,'Enable','Off');
            case 8
                set(handles.cL8bp_138,'Enable','Off');
                set(handles.dL8_138,'Enable','Off'); 
                set(handles.cL8_138,'Enable','On');
                set(handles.rL8bp_138,'Enable','Off');                
            case 9
                set(handles.cL9bp_138,'Enable','Off');
                set(handles.dL9_138,'Enable','Off'); 
                set(handles.cL9_138,'Enable','On');
                set(handles.rL9bp_138,'Enable','Off');                   
            case 10
                set(handles.cL10bp_138,'Enable','Off');
                set(handles.dL10_138,'Enable','Off'); 
                set(handles.cL10_138,'Enable','On');
                set(handles.rL10bp_138,'Enable','Off');                   
            case 11
                set(handles.cL11bp_138,'Enable','Off');
                set(handles.dL11_138,'Enable','Off'); 
                set(handles.cL11_138,'Enable','On');
                set(handles.rL11bp_138,'Enable','Off');                   
        end
        
    end
end



% --------------------------------------------------------------------
function cL10_138_Callback(hObject, eventdata, handles)
global byPassActivo1 estado;
for i=1:4
    bypass =  strcat('dl',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes10);
    pause(2);
end
set(handles.cL10_138,'Enable','Off');
set(handles.dL10_138,'Enable','On');
estado(10)=0;
if(byPassActivo1==1)
    set(handles.cL10bp_138,'Enable','Off');
else
    set(handles.cL10bp_138,'Enable','On');
end
set(handles.rL10bp_138,'Enable','Off');


% --------------------------------------------------------------------
function dL10_138_Callback(hObject, eventdata, handles)
global estado;
for i=4:7
    bypass =  strcat('dl',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes10);
    pause(2);
end
estado(10)=0;
set(handles.cL10_138,'Enable','On');
set(handles.dL10_138,'Enable','Off');
set(handles.cL10bp_138,'Enable','Off');
set(handles.rL10bp_138,'Enable','Off');


% --------------------------------------------------------------------
function cL10bp_138_Callback(hObject, eventdata, handles)
%Conectar con ByPass L10
global byPassActivo1;
byPassActivo1=1;
pause(2)    
bypass =  strcat('dt1.png');
imshow(bypass,'Parent',handles.axes10);
for i=1:4
    bypass =  strcat('bp3',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes12);
    pause(2)
end
for i=2:4
    bypass =  strcat('dt',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes10);
    pause(2)
end
set(handles.cL10_138,'Enable','Off');
set(handles.dL10_138,'Enable','Off');
set(handles.cL10bp_138,'Enable','Off');
set(handles.rL10bp_138,'Enable','On');
%Deshabilitar Otros
set(handles.cL2bp_138,'Enable','Off');
set(handles.cL1bp_138,'Enable','Off');
set(handles.cL3bp_138,'Enable','Off');
set(handles.cL5bp_138,'Enable','Off');
set(handles.cL6bp_138,'Enable','Off');
set(handles.cL7bp_138,'Enable','Off');
set(handles.cL8bp_138,'Enable','Off');
set(handles.cL9bp_138,'Enable','Off');
set(handles.cL4bp_138,'Enable','Off');
set(handles.cL11bp_138,'Enable','Off');

% --------------------------------------------------------------------
function rL10bp_138_Callback(hObject, eventdata, handles)
%Reposición de Línea 10 por su ByPass
global byPassActivo1 estado;
byPassActivo1=0;
for i=4:7
    bypass =  strcat('dt',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes10);
    pause(2)
end
for i=5:7
    bypass =  strcat('bp3',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes12);
    pause(2)
end
bypass =  'dl4.png';
imshow(bypass,'Parent',handles.axes10);
set(handles.cL10_138,'Enable','Off');
set(handles.dL10_138,'Enable','On');
set(handles.cL10bp_138,'Enable','On');
set(handles.rL10bp_138,'Enable','Off');
for i=1:11
    if(estado(i)==1)
        switch(i)
            case 1
                set(handles.cL1bp_138,'Enable','On');
                set(handles.dL1_138,'Enable','On');
                set(handles.cL1_138,'Enable','Off');
                set(handles.rL1bp_138,'Enable','Off');
            case 2
                set(handles.cL2bp_138,'Enable','On');
                set(handles.dL2_138,'Enable','On');
                set(handles.cL2_138,'Enable','Off');
                set(handles.rL2bp_138,'Enable','Off');   
            case 3
                set(handles.cL3bp_138,'Enable','On');
                set(handles.dL3_138,'Enable','On');
                set(handles.cL3_138,'Enable','Off');
                set(handles.rL3bp_138,'Enable','Off'); 
            case 4
                set(handles.cL4bp_138,'Enable','On');
                set(handles.dL4_138,'Enable','On');
                set(handles.cL4_138,'Enable','Off');
                set(handles.rL4bp_138,'Enable','Off');
            case 5
                set(handles.cL5bp_138,'Enable','On');
                set(handles.dL5_138,'Enable','On');
                set(handles.cL5_138,'Enable','Off');
                set(handles.rL5bp_138,'Enable','Off');                 
            case 6
                set(handles.cL6bp_138,'Enable','On');
                set(handles.dL6_138,'Enable','On');
                set(handles.rL6bp_138,'Enable','Off');
                set(handles.cL6_138,'Enable','Off');
            case 7
                set(handles.cL7bp_138,'Enable','On');
                set(handles.dL7_138,'Enable','On');  
                set(handles.cL7_138,'Enable','Off');
                set(handles.rL7bp_138,'Enable','Off');
            case 8
                set(handles.cL8bp_138,'Enable','On');
                set(handles.dL8_138,'Enable','On'); 
                set(handles.cL8_138,'Enable','Off');
                set(handles.rL8bp_138,'Enable','Off'); 
            case 9
                set(handles.cL9bp_138,'Enable','On');
                set(handles.dL9_138,'Enable','On');
                set(handles.cL9_138,'Enable','Off');
                set(handles.rL9bp_138,'Enable','Off');
            case 10
                set(handles.cL10bp_138,'Enable','On');
                set(handles.dL10_138,'Enable','On');
                set(handles.cL10_138,'Enable','Off');
                set(handles.rL10bp_138,'Enable','Off');  
            case 11
                set(handles.cL11bp_138,'Enable','On');
                set(handles.dL11_138,'Enable','On');
                set(handles.cL11_138,'Enable','Off');
                set(handles.rL11bp_138,'Enable','Off');                 
        end
    else
        switch(i)
            case 1
                set(handles.cL1bp_138,'Enable','Off');
                set(handles.dL1_138,'Enable','Off');
                set(handles.cL1_138,'Enable','On');
                set(handles.rL1bp_138,'Enable','Off');
            case 2
                set(handles.cL2bp_138,'Enable','Off');
                set(handles.dL2_138,'Enable','Off');
                set(handles.cL2_138,'Enable','On');
                set(handles.rL2bp_138,'Enable','Off');   
            case 3
                set(handles.cL3bp_138,'Enable','Off');
                set(handles.dL3_138,'Enable','Off');
                set(handles.cL3_138,'Enable','On');
                set(handles.rL3bp_138,'Enable','Off'); 
            case 4
                set(handles.cL4bp_138,'Enable','Off');
                set(handles.dL4_138,'Enable','Off');
                set(handles.cL4_138,'Enable','On');
                set(handles.rL4bp_138,'Enable','Off');                  
            case 5
                set(handles.cL5bp_138,'Enable','Off');
                set(handles.dL5_138,'Enable','Off');
                set(handles.cL5_138,'Enable','On');
                set(handles.rL5bp_138,'Enable','Off');                  
            case 6
                set(handles.cL6bp_138,'Enable','Off');
                set(handles.dL6_138,'Enable','Off');
                set(handles.rL6bp_138,'Enable','Off');
                set(handles.cL6_138,'Enable','On');
            case 7
                set(handles.cL7bp_138,'Enable','Off');
                set(handles.dL7_138,'Enable','Off');  
                set(handles.cL7_138,'Enable','On');
                set(handles.rL7bp_138,'Enable','Off');
            case 8
                set(handles.cL8bp_138,'Enable','Off');
                set(handles.dL8_138,'Enable','Off'); 
                set(handles.cL8_138,'Enable','On');
                set(handles.rL8bp_138,'Enable','Off');                
            case 9
                set(handles.cL9bp_138,'Enable','Off');
                set(handles.dL9_138,'Enable','Off'); 
                set(handles.cL9_138,'Enable','On');
                set(handles.rL9bp_138,'Enable','Off');                   
            case 10
                set(handles.cL10bp_138,'Enable','Off');
                set(handles.dL10_138,'Enable','Off'); 
                set(handles.cL10_138,'Enable','On');
                set(handles.rL10bp_138,'Enable','Off');                   
            case 11
                set(handles.cL11bp_138,'Enable','Off');
                set(handles.dL11_138,'Enable','Off'); 
                set(handles.cL11_138,'Enable','On');
                set(handles.rL11bp_138,'Enable','Off');                   
        end
        
    end
end

% --------------------------------------------------------------------
function cL11_138_Callback(hObject, eventdata, handles)
global byPassActivo1 estado;
for i=1:4
    bypass =  strcat('dl',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes11);
    pause(2);
end
set(handles.cL11_138,'Enable','Off');
set(handles.dL11_138,'Enable','On');
estado(11)=1;
if(byPassActivo1==1)
    set(handles.cL11bp_138,'Enable','Off');
else
    set(handles.cL11bp_138,'Enable','On');
end
set(handles.rL11bp_138,'Enable','Off');


% --------------------------------------------------------------------
function dL11_138_Callback(hObject, eventdata, handles)
global estado;
for i=4:7
    bypass =  strcat('dl',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes11);
    pause(2);
end
estado(11)=0;
set(handles.cL11_138,'Enable','On');
set(handles.dL11_138,'Enable','Off');
set(handles.cL11bp_138,'Enable','Off');
set(handles.rL11bp_138,'Enable','Off');


% --------------------------------------------------------------------
function cL11bp_138_Callback(hObject, eventdata, handles)
%Conectar con ByPass L11
global byPassActivo1;
byPassActivo1=1;
pause(2)    
bypass =  strcat('dt1.png');
imshow(bypass,'Parent',handles.axes11);
for i=1:4
    bypass =  strcat('bp3',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes12);
    pause(2)
end
for i=2:4
    bypass =  strcat('dt',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes11);
    pause(2)
end
set(handles.cL11_138,'Enable','Off');
set(handles.dL11_138,'Enable','Off');
set(handles.cL11bp_138,'Enable','Off');
set(handles.rL11bp_138,'Enable','On');
%Deshabilitar Otros
set(handles.cL2bp_138,'Enable','Off');
set(handles.cL1bp_138,'Enable','Off');
set(handles.cL3bp_138,'Enable','Off');
set(handles.cL5bp_138,'Enable','Off');
set(handles.cL6bp_138,'Enable','Off');
set(handles.cL7bp_138,'Enable','Off');
set(handles.cL8bp_138,'Enable','Off');
set(handles.cL9bp_138,'Enable','Off');
set(handles.cL10bp_138,'Enable','Off');
set(handles.cL4bp_138,'Enable','Off');

% --------------------------------------------------------------------
function rL11bp_138_Callback(hObject, eventdata, handles)
%Reposición de Línea 3 por su ByPass
global byPassActivo1 estado;
byPassActivo1=0;
for i=4:7
    bypass =  strcat('dt',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes11);
    pause(2)
end
for i=5:7
    bypass =  strcat('bp3',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes12);
    pause(2)
end
bypass =  'dl4.png';
imshow(bypass,'Parent',handles.axes11);
set(handles.cL11_138,'Enable','Off');
set(handles.dL11_138,'Enable','On');
set(handles.cL11bp_138,'Enable','On');
set(handles.rL11bp_138,'Enable','Off');
for i=1:11
    if(estado(i)==1)
        switch(i)
            case 1
                set(handles.cL1bp_138,'Enable','On');
                set(handles.dL1_138,'Enable','On');
                set(handles.cL1_138,'Enable','Off');
                set(handles.rL1bp_138,'Enable','Off');
            case 2
                set(handles.cL2bp_138,'Enable','On');
                set(handles.dL2_138,'Enable','On');
                set(handles.cL2_138,'Enable','Off');
                set(handles.rL2bp_138,'Enable','Off');   
            case 3
                set(handles.cL3bp_138,'Enable','On');
                set(handles.dL3_138,'Enable','On');
                set(handles.cL3_138,'Enable','Off');
                set(handles.rL3bp_138,'Enable','Off'); 
            case 4
                set(handles.cL4bp_138,'Enable','On');
                set(handles.dL4_138,'Enable','On');
                set(handles.cL4_138,'Enable','Off');
                set(handles.rL4bp_138,'Enable','Off');
            case 5
                set(handles.cL5bp_138,'Enable','On');
                set(handles.dL5_138,'Enable','On');
                set(handles.cL5_138,'Enable','Off');
                set(handles.rL5bp_138,'Enable','Off');                 
            case 6
                set(handles.cL6bp_138,'Enable','On');
                set(handles.dL6_138,'Enable','On');
                set(handles.rL6bp_138,'Enable','Off');
                set(handles.cL6_138,'Enable','Off');
            case 7
                set(handles.cL7bp_138,'Enable','On');
                set(handles.dL7_138,'Enable','On');  
                set(handles.cL7_138,'Enable','Off');
                set(handles.rL7bp_138,'Enable','Off');
            case 8
                set(handles.cL8bp_138,'Enable','On');
                set(handles.dL8_138,'Enable','On'); 
                set(handles.cL8_138,'Enable','Off');
                set(handles.rL8bp_138,'Enable','Off'); 
            case 9
                set(handles.cL9bp_138,'Enable','On');
                set(handles.dL9_138,'Enable','On');
                set(handles.cL9_138,'Enable','Off');
                set(handles.rL9bp_138,'Enable','Off');
            case 10
                set(handles.cL10bp_138,'Enable','On');
                set(handles.dL10_138,'Enable','On');
                set(handles.cL10_138,'Enable','Off');
                set(handles.rL10bp_138,'Enable','Off');  
            case 11
                set(handles.cL11bp_138,'Enable','On');
                set(handles.dL11_138,'Enable','On');
                set(handles.cL11_138,'Enable','Off');
                set(handles.rL11bp_138,'Enable','Off');                 
        end
    else
        switch(i)
            case 1
                set(handles.cL1bp_138,'Enable','Off');
                set(handles.dL1_138,'Enable','Off');
                set(handles.cL1_138,'Enable','On');
                set(handles.rL1bp_138,'Enable','Off');
            case 2
                set(handles.cL2bp_138,'Enable','Off');
                set(handles.dL2_138,'Enable','Off');
                set(handles.cL2_138,'Enable','On');
                set(handles.rL2bp_138,'Enable','Off');   
            case 3
                set(handles.cL3bp_138,'Enable','Off');
                set(handles.dL3_138,'Enable','Off');
                set(handles.cL3_138,'Enable','On');
                set(handles.rL3bp_138,'Enable','Off'); 
            case 4
                set(handles.cL4bp_138,'Enable','Off');
                set(handles.dL4_138,'Enable','Off');
                set(handles.cL4_138,'Enable','On');
                set(handles.rL4bp_138,'Enable','Off');                  
            case 5
                set(handles.cL5bp_138,'Enable','Off');
                set(handles.dL5_138,'Enable','Off');
                set(handles.cL5_138,'Enable','On');
                set(handles.rL5bp_138,'Enable','Off');                  
            case 6
                set(handles.cL6bp_138,'Enable','Off');
                set(handles.dL6_138,'Enable','Off');
                set(handles.rL6bp_138,'Enable','Off');
                set(handles.cL6_138,'Enable','On');
            case 7
                set(handles.cL7bp_138,'Enable','Off');
                set(handles.dL7_138,'Enable','Off');  
                set(handles.cL7_138,'Enable','On');
                set(handles.rL7bp_138,'Enable','Off');
            case 8
                set(handles.cL8bp_138,'Enable','Off');
                set(handles.dL8_138,'Enable','Off'); 
                set(handles.cL8_138,'Enable','On');
                set(handles.rL8bp_138,'Enable','Off');                
            case 9
                set(handles.cL9bp_138,'Enable','Off');
                set(handles.dL9_138,'Enable','Off'); 
                set(handles.cL9_138,'Enable','On');
                set(handles.rL9bp_138,'Enable','Off');                   
            case 10
                set(handles.cL10bp_138,'Enable','Off');
                set(handles.dL10_138,'Enable','Off'); 
                set(handles.cL10_138,'Enable','On');
                set(handles.rL10bp_138,'Enable','Off');                   
            case 11
                set(handles.cL11bp_138,'Enable','Off');
                set(handles.dL11_138,'Enable','Off'); 
                set(handles.cL11_138,'Enable','On');
                set(handles.rL11bp_138,'Enable','Off');                   
        end
        
    end
end


% --------------------------------------------------------------------
function cL12_138_Callback(hObject, eventdata, handles)
global byPassActivo2 estado2;
for i=1:4
    bypass =  strcat('dl',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes26);
    pause(2);
end
set(handles.cL12_138,'Enable','Off');
set(handles.dL12_138,'Enable','On');
estado2(1)=1;
if(byPassActivo2==1)
    set(handles.cL12bp_138,'Enable','Off');
else
    set(handles.cL12bp_138,'Enable','On');
end
set(handles.rL12bp_138,'Enable','Off');


% --------------------------------------------------------------------
function dL12_138_Callback(hObject, eventdata, handles)
global estado2;
for i=4:7
    bypass =  strcat('dl',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes26);
    pause(2);
end
estado2(1)=0;
set(handles.cL12_138,'Enable','On');
set(handles.dL12_138,'Enable','Off');
set(handles.cL12bp_138,'Enable','Off');
set(handles.rL12bp_138,'Enable','Off');

% --------------------------------------------------------------------
function cL12bp_138_Callback(hObject, eventdata, handles)
%Conectar con ByPass L12
global byPassActivo2;
byPassActivo2=1;
pause(2)    
bypass =  strcat('dt1.png');
imshow(bypass,'Parent',handles.axes26);
for i=1:4
    bypass =  strcat('bp3',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes25);
    pause(2)
end
for i=2:4
    bypass =  strcat('dt',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes26);
    pause(2)
end
set(handles.cL12_138,'Enable','Off');
set(handles.dL12_138,'Enable','Off');
set(handles.cL12bp_138,'Enable','Off');
set(handles.rL12bp_138,'Enable','On');
%Deshabilitar Otros
set(handles.cL13bp_138,'Enable','Off');
set(handles.cL14bp_138,'Enable','Off');
set(handles.cL15bp_138,'Enable','Off');



% --------------------------------------------------------------------
function rL12bp_138_Callback(hObject, eventdata, handles)
%Reposición de Línea 12 por su ByPass
global byPassActivo2 estado2;
byPassActivo2=0;
for i=4:7
    bypass =  strcat('dt',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes26);
    pause(2)
end
for i=5:7
    bypass =  strcat('bp3',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes25);
    pause(2)
end
bypass =  'dl4.png';
imshow(bypass,'Parent',handles.axes26);
set(handles.cL12_138,'Enable','Off');
set(handles.dL12_138,'Enable','On');
set(handles.cL12bp_138,'Enable','On');
set(handles.rL12bp_138,'Enable','Off');

for i=1:4
    if(estado2(i)==1)
        switch(i)
            case 1
                set(handles.cL12bp_138,'Enable','On');
                set(handles.dL12_138,'Enable','On');
                set(handles.cL12_138,'Enable','Off');
                set(handles.rL12bp_138,'Enable','Off');
            case 2
                set(handles.cL13bp_138,'Enable','On');
                set(handles.dL13_138,'Enable','On');
                set(handles.cL13_138,'Enable','Off');
                set(handles.rL13bp_138,'Enable','Off');   
            case 3
                set(handles.cL14bp_138,'Enable','On');
                set(handles.dL14_138,'Enable','On');
                set(handles.cL14_138,'Enable','Off');
                set(handles.rL14bp_138,'Enable','Off'); 
            case 4
                set(handles.cL15bp_138,'Enable','On');
                set(handles.dL15_138,'Enable','On');
                set(handles.cL15_138,'Enable','Off');
                set(handles.rL15bp_138,'Enable','Off');               
        end
    else
        switch(i)
            case 1
                set(handles.cL12bp_138,'Enable','Off');
                set(handles.dL12_138,'Enable','Off');
                set(handles.cL12_138,'Enable','On');
                set(handles.rL12bp_138,'Enable','Off');
            case 2
                set(handles.cL13bp_138,'Enable','Off');
                set(handles.dL13_138,'Enable','Off');
                set(handles.cL13_138,'Enable','On');
                set(handles.rL13bp_138,'Enable','Off');   
            case 3
                set(handles.cL14bp_138,'Enable','Off');
                set(handles.dL14_138,'Enable','Off');
                set(handles.cL14_138,'Enable','On');
                set(handles.rL14bp_138,'Enable','Off'); 
            case 4
                set(handles.cL15bp_138,'Enable','Off');
                set(handles.dL15_138,'Enable','Off');
                set(handles.cL15_138,'Enable','On');
                set(handles.rL15bp_138,'Enable','Off');                                   
        end
        
    end
end



% --------------------------------------------------------------------
function cL13_138_Callback(hObject, eventdata, handles)
global byPassActivo2 estado2;
for i=1:4
    bypass =  strcat('dl',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes27);
    pause(2);
end
estado2(2)=1;
set(handles.cL13_138,'Enable','Off');
set(handles.dL13_138,'Enable','On');
if(byPassActivo2==1)
    set(handles.cL13bp_138,'Enable','Off');
else
    set(handles.cL13bp_138,'Enable','On');
end
set(handles.rL13bp_138,'Enable','Off');


% --------------------------------------------------------------------
function dL13_138_Callback(hObject, eventdata, handles)
global estado2;
for i=4:7
    bypass =  strcat('dl',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes27);
    pause(2);
end
estado2(2)=0;
set(handles.cL13_138,'Enable','On');
set(handles.dL13_138,'Enable','Off');
set(handles.cL13bp_138,'Enable','Off');
set(handles.rL13bp_138,'Enable','Off');


% --------------------------------------------------------------------
function cL13bp_138_Callback(hObject, eventdata, handles)
%Conectar con ByPass L13
global byPassActivo2;
byPassActivo2=1;
pause(2)    
bypass =  strcat('dt1.png');
imshow(bypass,'Parent',handles.axes27);
for i=1:4
    bypass =  strcat('bp3',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes25);
    pause(2)
end
for i=2:4
    bypass =  strcat('dt',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes27);
    pause(2)
end
set(handles.cL13_138,'Enable','Off');
set(handles.dL13_138,'Enable','Off');
set(handles.cL13bp_138,'Enable','Off');
set(handles.rL13bp_138,'Enable','On');
%Deshabilitar Otros
set(handles.cL12bp_138,'Enable','Off');
set(handles.cL14bp_138,'Enable','Off');
set(handles.cL15bp_138,'Enable','Off');



% --------------------------------------------------------------------
function rL13bp_138_Callback(hObject, eventdata, handles)
%Reposición de Línea 13 por su ByPass
global byPassActivo2 estado2;
byPassActivo2=0;
for i=4:7
    bypass =  strcat('dt',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes27);
    pause(2)
end
for i=5:7
    bypass =  strcat('bp3',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes25);
    pause(2)
end
bypass =  'dl4.png';
imshow(bypass,'Parent',handles.axes27);
set(handles.cL13_138,'Enable','Off');
set(handles.dL13_138,'Enable','On');
set(handles.cL13bp_138,'Enable','On');
set(handles.rL13bp_138,'Enable','Off');
for i=1:4
    if(estado2(i)==1)
        switch(i)
            case 1
                set(handles.cL12bp_138,'Enable','On');
                set(handles.dL12_138,'Enable','On');
                set(handles.cL12_138,'Enable','Off');
                set(handles.rL12bp_138,'Enable','Off');
            case 2
                set(handles.cL13bp_138,'Enable','On');
                set(handles.dL13_138,'Enable','On');
                set(handles.cL13_138,'Enable','Off');
                set(handles.rL13bp_138,'Enable','Off');   
            case 3
                set(handles.cL14bp_138,'Enable','On');
                set(handles.dL14_138,'Enable','On');
                set(handles.cL14_138,'Enable','Off');
                set(handles.rL14bp_138,'Enable','Off'); 
            case 4
                set(handles.cL15bp_138,'Enable','On');
                set(handles.dL15_138,'Enable','On');
                set(handles.cL15_138,'Enable','Off');
                set(handles.rL15bp_138,'Enable','Off');               
        end
    else
        switch(i)
            case 1
                set(handles.cL12bp_138,'Enable','Off');
                set(handles.dL12_138,'Enable','Off');
                set(handles.cL12_138,'Enable','On');
                set(handles.rL12bp_138,'Enable','Off');
            case 2
                set(handles.cL13bp_138,'Enable','Off');
                set(handles.dL13_138,'Enable','Off');
                set(handles.cL13_138,'Enable','On');
                set(handles.rL13bp_138,'Enable','Off');   
            case 3
                set(handles.cL14bp_138,'Enable','Off');
                set(handles.dL14_138,'Enable','Off');
                set(handles.cL14_138,'Enable','On');
                set(handles.rL14bp_138,'Enable','Off'); 
            case 4
                set(handles.cL15bp_138,'Enable','Off');
                set(handles.dL15_138,'Enable','Off');
                set(handles.cL15_138,'Enable','On');
                set(handles.rL15bp_138,'Enable','Off');                                   
        end
        
    end
end

% --------------------------------------------------------------------
function cL14_138_Callback(hObject, eventdata, handles)
global byPassActivo2 estado2;
for i=1:4
    bypass =  strcat('dl',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes28);
    pause(2);
end
estado2(3)=1;
set(handles.cL14_138,'Enable','Off');
set(handles.dL14_138,'Enable','On');
if(byPassActivo2==1)
    set(handles.cL14bp_138,'Enable','Off');
else
    set(handles.cL14bp_138,'Enable','On');
end
set(handles.rL14bp_138,'Enable','Off');


% --------------------------------------------------------------------
function dL14_138_Callback(hObject, eventdata, handles)
global estado2;
for i=4:7
    bypass =  strcat('dl',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes28);
    pause(2);
end
estado2(3)=0;
set(handles.cL14_138,'Enable','On');
set(handles.dL14_138,'Enable','Off');
set(handles.cL14bp_138,'Enable','Off');
set(handles.rL14bp_138,'Enable','Off');


% --------------------------------------------------------------------
function cL14bp_138_Callback(hObject, eventdata, handles)
%Conectar con ByPass L14
global byPassActivo2;
byPassActivo2=1;
pause(2)    
bypass =  strcat('dt1.png');
imshow(bypass,'Parent',handles.axes28);
for i=1:4
    bypass =  strcat('bp3',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes25);
    pause(2)
end
for i=2:4
    bypass =  strcat('dt',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes28);
    pause(2)
end
set(handles.cL14_138,'Enable','Off');
set(handles.dL14_138,'Enable','Off');
set(handles.cL14bp_138,'Enable','Off');
set(handles.rL14bp_138,'Enable','On');
%Deshabilitar Otros
set(handles.cL12bp_138,'Enable','Off');
set(handles.cL13bp_138,'Enable','Off');
set(handles.cL15bp_138,'Enable','Off');



% --------------------------------------------------------------------
function rL14bp_138_Callback(hObject, eventdata, handles)
%Reposición de Línea 14 por su ByPass
global byPassActivo2 estado2;
byPassActivo2=0;
for i=4:7
    bypass =  strcat('dt',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes28);
    pause(2)
end
for i=5:7
    bypass =  strcat('bp3',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes25);
    pause(2)
end
bypass =  'dl4.png';
imshow(bypass,'Parent',handles.axes28);
set(handles.cL14_138,'Enable','Off');
set(handles.dL14_138,'Enable','On');
set(handles.cL14bp_138,'Enable','On');
set(handles.rL14bp_138,'Enable','Off');
for i=1:4
    if(estado2(i)==1)
        switch(i)
            case 1
                set(handles.cL12bp_138,'Enable','On');
                set(handles.dL12_138,'Enable','On');
                set(handles.cL12_138,'Enable','Off');
                set(handles.rL12bp_138,'Enable','Off');
            case 2
                set(handles.cL13bp_138,'Enable','On');
                set(handles.dL13_138,'Enable','On');
                set(handles.cL13_138,'Enable','Off');
                set(handles.rL13bp_138,'Enable','Off');   
            case 3
                set(handles.cL14bp_138,'Enable','On');
                set(handles.dL14_138,'Enable','On');
                set(handles.cL14_138,'Enable','Off');
                set(handles.rL14bp_138,'Enable','Off'); 
            case 4
                set(handles.cL15bp_138,'Enable','On');
                set(handles.dL15_138,'Enable','On');
                set(handles.cL15_138,'Enable','Off');
                set(handles.rL15bp_138,'Enable','Off');               
        end
    else
        switch(i)
            case 1
                set(handles.cL12bp_138,'Enable','Off');
                set(handles.dL12_138,'Enable','Off');
                set(handles.cL12_138,'Enable','On');
                set(handles.rL12bp_138,'Enable','Off');
            case 2
                set(handles.cL13bp_138,'Enable','Off');
                set(handles.dL13_138,'Enable','Off');
                set(handles.cL13_138,'Enable','On');
                set(handles.rL13bp_138,'Enable','Off');   
            case 3
                set(handles.cL14bp_138,'Enable','Off');
                set(handles.dL14_138,'Enable','Off');
                set(handles.cL14_138,'Enable','On');
                set(handles.rL14bp_138,'Enable','Off'); 
            case 4
                set(handles.cL15bp_138,'Enable','Off');
                set(handles.dL15_138,'Enable','Off');
                set(handles.cL15_138,'Enable','On');
                set(handles.rL15bp_138,'Enable','Off');                                   
        end
        
    end
end

% --------------------------------------------------------------------
function cL15_138_Callback(hObject, eventdata, handles)
global byPassActivo2 estado2;
for i=1:4
    bypass =  strcat('dl',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes29);
    pause(2);
end
estado2(4)=1;
set(handles.cL15_138,'Enable','Off');
set(handles.dL15_138,'Enable','On');
if(byPassActivo2==1)
    set(handles.cL15bp_138,'Enable','Off');
else
    set(handles.cL15bp_138,'Enable','On');
end
set(handles.rL15bp_138,'Enable','Off');


% --------------------------------------------------------------------
function dL15_138_Callback(hObject, eventdata, handles)
global estado2;
for i=4:7
    bypass =  strcat('dl',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes29);
    pause(2);
end
estado2(4)=0;
set(handles.cL15_138,'Enable','On');
set(handles.dL15_138,'Enable','Off');
set(handles.cL15bp_138,'Enable','Off');
set(handles.rL15bp_138,'Enable','Off');


% --------------------------------------------------------------------
function cL15bp_138_Callback(hObject, eventdata, handles)
%Conectar con ByPass L15
global byPassActivo2;
byPassActivo2=1;
pause(2)    
bypass =  strcat('dt1.png');
imshow(bypass,'Parent',handles.axes29);
for i=1:4
    bypass =  strcat('bp3',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes25);
    pause(2)
end
for i=2:4
    bypass =  strcat('dt',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes29);
    pause(2)
end
set(handles.cL15_138,'Enable','Off');
set(handles.dL15_138,'Enable','Off');
set(handles.cL15bp_138,'Enable','Off');
set(handles.rL15bp_138,'Enable','On');
%Deshabilitar Otros
set(handles.cL13bp_138,'Enable','Off');
set(handles.cL14bp_138,'Enable','Off');
set(handles.cL12bp_138,'Enable','Off');



% --------------------------------------------------------------------
function rL15bp_138_Callback(hObject, eventdata, handles)
%Reposición de Línea 15 por su ByPass
global byPassActivo2 estado2;
byPassActivo2=0;
for i=4:7
    bypass =  strcat('dt',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes29);
    pause(2)
end
for i=5:7
    bypass =  strcat('bp3',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes25);
    pause(2)
end
bypass =  'dl4.png';
imshow(bypass,'Parent',handles.axes29);
set(handles.cL15_138,'Enable','Off');
set(handles.dL15_138,'Enable','On');
set(handles.cL15bp_138,'Enable','On');
set(handles.rL15bp_138,'Enable','Off');
for i=1:4
    if(estado2(i)==1)
        switch(i)
            case 1
                set(handles.cL12bp_138,'Enable','On');
                set(handles.dL12_138,'Enable','On');
                set(handles.cL12_138,'Enable','Off');
                set(handles.rL12bp_138,'Enable','Off');
            case 2
                set(handles.cL13bp_138,'Enable','On');
                set(handles.dL13_138,'Enable','On');
                set(handles.cL13_138,'Enable','Off');
                set(handles.rL13bp_138,'Enable','Off');   
            case 3
                set(handles.cL14bp_138,'Enable','On');
                set(handles.dL14_138,'Enable','On');
                set(handles.cL14_138,'Enable','Off');
                set(handles.rL14bp_138,'Enable','Off'); 
            case 4
                set(handles.cL15bp_138,'Enable','On');
                set(handles.dL15_138,'Enable','On');
                set(handles.cL15_138,'Enable','Off');
                set(handles.rL15bp_138,'Enable','Off');               
        end
    else
        switch(i)
            case 1
                set(handles.cL12bp_138,'Enable','Off');
                set(handles.dL12_138,'Enable','Off');
                set(handles.cL12_138,'Enable','On');
                set(handles.rL12bp_138,'Enable','Off');
            case 2
                set(handles.cL13bp_138,'Enable','Off');
                set(handles.dL13_138,'Enable','Off');
                set(handles.cL13_138,'Enable','On');
                set(handles.rL13bp_138,'Enable','Off');   
            case 3
                set(handles.cL14bp_138,'Enable','Off');
                set(handles.dL14_138,'Enable','Off');
                set(handles.cL14_138,'Enable','On');
                set(handles.rL14bp_138,'Enable','Off'); 
            case 4
                set(handles.cL15bp_138,'Enable','Off');
                set(handles.dL15_138,'Enable','Off');
                set(handles.cL15_138,'Enable','On');
                set(handles.rL15bp_138,'Enable','Off');                                   
        end
        
    end
end


% --------------------------------------------------------------------
function cL1_345_Callback(hObject, eventdata, handles)
global byPassActivo3 estado3;
for i=1:4
    bypass =  strcat('bl',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes31);
    pause(2);
end
estado3(1)=1;
set(handles.cL1_345,'Enable','Off');
set(handles.dL1_345,'Enable','On');
if(byPassActivo3==1)
    set(handles.cL1bp_345,'Enable','Off');
else
    set(handles.cL1bp_345,'Enable','On');
end
set(handles.rL1bp_345,'Enable','Off');


% --------------------------------------------------------------------
function dL1_345_Callback(hObject, eventdata, handles)
global estado3;
for i=4:7
    bypass =  strcat('bl',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes31);
    pause(2);
end
estado3(1)=0;
set(handles.cL1_345,'Enable','On');
set(handles.dL1_345,'Enable','Off');
set(handles.cL1bp_345,'Enable','Off');
set(handles.rL1bp_345,'Enable','Off');


% --------------------------------------------------------------------
function cL1bp_345_Callback(hObject, eventdata, handles)
%Conectar con ByPass L1 34.5kV
global byPassActivo3;
byPassActivo3=1;
pause(2)    
bypass =  strcat('bt1.png');
imshow(bypass,'Parent',handles.axes31);
for i=1:4
    bypass =  strcat('bp2',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes30);
    pause(2)
end
for i=2:4
    bypass =  strcat('bt',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes31);
    pause(2)
end
set(handles.cL1_345,'Enable','Off');
set(handles.dL1_345,'Enable','Off');
set(handles.cL1bp_345,'Enable','Off');
set(handles.rL1bp_345,'Enable','On');
%Deshabilitar Otros
set(handles.cL2bp_345,'Enable','Off');
set(handles.cL3bp_345,'Enable','Off');
set(handles.cL4bp_345,'Enable','Off');


% --------------------------------------------------------------------
function rL1bp_345_Callback(hObject, eventdata, handles)
%Reposición de Línea 1 por su ByPass
global byPassActivo3 estado3;
byPassActivo3=0;
for i=4:7
    bypass =  strcat('bt',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes31);
    pause(2)
end
for i=5:7
    bypass =  strcat('bp2',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes30);
    pause(2)
end
bypass =  'bl4.png';
imshow(bypass,'Parent',handles.axes31);
set(handles.cL1_345,'Enable','Off');
set(handles.dL1_345,'Enable','On');
set(handles.cL1bp_345,'Enable','On');
set(handles.rL1bp_345,'Enable','Off');
for i=1:4
    if(estado3(i)==1)
        switch(i)
            case 1
                set(handles.cL1bp_345,'Enable','On');
                set(handles.dL1_345,'Enable','On');
                set(handles.cL1_345,'Enable','Off');
                set(handles.rL1bp_345,'Enable','Off');
            case 2
                set(handles.cL2bp_345,'Enable','On');
                set(handles.dL2_345,'Enable','On');
                set(handles.cL2_345,'Enable','Off');
                set(handles.rL2bp_345,'Enable','Off');   
            case 3
                set(handles.cL3bp_345,'Enable','On');
                set(handles.dL3_345,'Enable','On');
                set(handles.cL3_345,'Enable','Off');
                set(handles.rL3bp_345,'Enable','Off'); 
            case 4
                set(handles.cL4bp_345,'Enable','On');
                set(handles.dL4_345,'Enable','On');
                set(handles.cL4_345,'Enable','Off');
                set(handles.rL4bp_345,'Enable','Off');               
        end
    else
        switch(i)
            case 1
                set(handles.cL1bp_345,'Enable','Off');
                set(handles.dL1_345,'Enable','Off');
                set(handles.cL1_345,'Enable','On');
                set(handles.rL1bp_345,'Enable','Off');
            case 2
                set(handles.cL2bp_345,'Enable','Off');
                set(handles.dL2_345,'Enable','Off');
                set(handles.cL2_345,'Enable','On');
                set(handles.rL2bp_345,'Enable','Off');   
            case 3
                set(handles.cL3bp_345,'Enable','Off');
                set(handles.dL3_345,'Enable','Off');
                set(handles.cL3_345,'Enable','On');
                set(handles.rL3bp_345,'Enable','Off'); 
            case 4
                set(handles.cL4bp_345,'Enable','Off');
                set(handles.dL4_345,'Enable','Off');
                set(handles.cL4_345,'Enable','On');
                set(handles.rL4bp_345,'Enable','Off');                                   
        end
        
    end
end


% --------------------------------------------------------------------
function cL2_345_Callback(hObject, eventdata, handles)
global byPassActivo3 estado3;
for i=1:4
    bypass =  strcat('bl',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes32);
    pause(2);
end
estado3(2)=1;
set(handles.cL2_345,'Enable','Off');
set(handles.dL2_345,'Enable','On');
if(byPassActivo3==1)
    set(handles.cL2bp_345,'Enable','Off');
else
    set(handles.cL2bp_345,'Enable','On');
end
set(handles.rL2bp_345,'Enable','Off');


% --------------------------------------------------------------------
function dL2_345_Callback(hObject, eventdata, handles)
global estado3;
for i=4:7
    bypass =  strcat('bl',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes32);
    pause(2);
end
estado3(2)=0;
set(handles.cL2_345,'Enable','On');
set(handles.dL2_345,'Enable','Off');
set(handles.cL2bp_345,'Enable','Off');
set(handles.rL2bp_345,'Enable','Off');


% --------------------------------------------------------------------
function cL2bp_345_Callback(hObject, eventdata, handles)
%Conectar con ByPass L2 34.5kV
global byPassActivo3;
byPassActivo3=1;
pause(2)    
bypass =  strcat('bt1.png');
imshow(bypass,'Parent',handles.axes32);
for i=1:4
    bypass =  strcat('bp2',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes30);
    pause(2)
end
for i=2:4
    bypass =  strcat('bt',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes32);
    pause(2)
end
set(handles.cL2_345,'Enable','Off');
set(handles.dL2_345,'Enable','Off');
set(handles.cL2bp_345,'Enable','Off');
set(handles.rL2bp_345,'Enable','On');
%Deshabilitar Otros
set(handles.cL1bp_345,'Enable','Off');
set(handles.cL3bp_345,'Enable','Off');
set(handles.cL4bp_345,'Enable','Off');


% --------------------------------------------------------------------
function rL2bp_345_Callback(hObject, eventdata, handles)
%Reposición de Línea 2 por su ByPass
global byPassActivo3 estado3;
byPassActivo3=0;
for i=4:7
    bypass =  strcat('bt',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes32);
    pause(2)
end
for i=5:7
    bypass =  strcat('bp2',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes30);
    pause(2)
end
bypass =  'bl4.png';
imshow(bypass,'Parent',handles.axes32);
set(handles.cL2_345,'Enable','Off');
set(handles.dL2_345,'Enable','On');
set(handles.cL2bp_345,'Enable','On');
set(handles.rL2bp_345,'Enable','Off');
for i=1:4
    if(estado3(i)==1)
        switch(i)
            case 1
                set(handles.cL1bp_345,'Enable','On');
                set(handles.dL1_345,'Enable','On');
                set(handles.cL1_345,'Enable','Off');
                set(handles.rL1bp_345,'Enable','Off');
            case 2
                set(handles.cL2bp_345,'Enable','On');
                set(handles.dL2_345,'Enable','On');
                set(handles.cL2_345,'Enable','Off');
                set(handles.rL2bp_345,'Enable','Off');   
            case 3
                set(handles.cL3bp_345,'Enable','On');
                set(handles.dL3_345,'Enable','On');
                set(handles.cL3_345,'Enable','Off');
                set(handles.rL3bp_345,'Enable','Off'); 
            case 4
                set(handles.cL4bp_345,'Enable','On');
                set(handles.dL4_345,'Enable','On');
                set(handles.cL4_345,'Enable','Off');
                set(handles.rL4bp_345,'Enable','Off');               
        end
    else
        switch(i)
            case 1
                set(handles.cL1bp_345,'Enable','Off');
                set(handles.dL1_345,'Enable','Off');
                set(handles.cL1_345,'Enable','On');
                set(handles.rL1bp_345,'Enable','Off');
            case 2
                set(handles.cL2bp_345,'Enable','Off');
                set(handles.dL2_345,'Enable','Off');
                set(handles.cL2_345,'Enable','On');
                set(handles.rL2bp_345,'Enable','Off');   
            case 3
                set(handles.cL3bp_345,'Enable','Off');
                set(handles.dL3_345,'Enable','Off');
                set(handles.cL3_345,'Enable','On');
                set(handles.rL3bp_345,'Enable','Off'); 
            case 4
                set(handles.cL4bp_345,'Enable','Off');
                set(handles.dL4_345,'Enable','Off');
                set(handles.cL4_345,'Enable','On');
                set(handles.rL4bp_345,'Enable','Off');                                   
        end
        
    end
end


% --------------------------------------------------------------------
function cL3_345_Callback(hObject, eventdata, handles)
global byPassActivo3 estado3;
for i=1:4
    bypass =  strcat('bl',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes33);
    pause(2);
end
estado3(3)=1;
set(handles.cL3_345,'Enable','Off');
set(handles.dL3_345,'Enable','On');
if(byPassActivo3==1)
    set(handles.cL3bp_345,'Enable','Off');
else
    set(handles.cL3bp_345,'Enable','On');
end
set(handles.rL3bp_345,'Enable','Off');


% --------------------------------------------------------------------
function dL3_345_Callback(hObject, eventdata, handles)
global estado3;
for i=4:7
    bypass =  strcat('bl',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes33);
    pause(2);
end
estado3(3)=0;
set(handles.cL3_345,'Enable','On');
set(handles.dL3_345,'Enable','Off');
set(handles.cL3bp_345,'Enable','Off');
set(handles.rL3bp_345,'Enable','Off');


% --------------------------------------------------------------------
function cL3bp_345_Callback(hObject, eventdata, handles)
%Conectar con ByPass L3 34.5kV
global byPassActivo3;
byPassActivo3=1;
pause(2)    
bypass =  strcat('bt1.png');
imshow(bypass,'Parent',handles.axes33);
for i=1:4
    bypass =  strcat('bp2',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes30);
    pause(2)
end
for i=2:4
    bypass =  strcat('bt',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes33);
    pause(2)
end
set(handles.cL3_345,'Enable','Off');
set(handles.dL3_345,'Enable','Off');
set(handles.cL3bp_345,'Enable','Off');
set(handles.rL3bp_345,'Enable','On');
%Deshabilitar Otros
set(handles.cL1bp_345,'Enable','Off');
set(handles.cL2bp_345,'Enable','Off');
set(handles.cL4bp_345,'Enable','Off');


% --------------------------------------------------------------------
function rL3bp_345_Callback(hObject, eventdata, handles)
%Reposición de Línea 3 por su ByPass
global byPassActivo3 estado3;
byPassActivo3=0;
for i=4:7
    bypass =  strcat('bt',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes33);
    pause(2)
end
for i=5:7
    bypass =  strcat('bp2',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes30);
    pause(2)
end
bypass =  'bl4.png';
imshow(bypass,'Parent',handles.axes33);
set(handles.cL3_345,'Enable','Off');
set(handles.dL3_345,'Enable','On');
set(handles.cL3bp_345,'Enable','On');
set(handles.rL3bp_345,'Enable','Off');
for i=1:4
    if(estado3(i)==1)
        switch(i)
            case 1
                set(handles.cL1bp_345,'Enable','On');
                set(handles.dL1_345,'Enable','On');
                set(handles.cL1_345,'Enable','Off');
                set(handles.rL1bp_345,'Enable','Off');
            case 2
                set(handles.cL2bp_345,'Enable','On');
                set(handles.dL2_345,'Enable','On');
                set(handles.cL2_345,'Enable','Off');
                set(handles.rL2bp_345,'Enable','Off');   
            case 3
                set(handles.cL3bp_345,'Enable','On');
                set(handles.dL3_345,'Enable','On');
                set(handles.cL3_345,'Enable','Off');
                set(handles.rL3bp_345,'Enable','Off'); 
            case 4
                set(handles.cL4bp_345,'Enable','On');
                set(handles.dL4_345,'Enable','On');
                set(handles.cL4_345,'Enable','Off');
                set(handles.rL4bp_345,'Enable','Off');               
        end
    else
        switch(i)
            case 1
                set(handles.cL1bp_345,'Enable','Off');
                set(handles.dL1_345,'Enable','Off');
                set(handles.cL1_345,'Enable','On');
                set(handles.rL1bp_345,'Enable','Off');
            case 2
                set(handles.cL2bp_345,'Enable','Off');
                set(handles.dL2_345,'Enable','Off');
                set(handles.cL2_345,'Enable','On');
                set(handles.rL2bp_345,'Enable','Off');   
            case 3
                set(handles.cL3bp_345,'Enable','Off');
                set(handles.dL3_345,'Enable','Off');
                set(handles.cL3_345,'Enable','On');
                set(handles.rL3bp_345,'Enable','Off'); 
            case 4
                set(handles.cL4bp_345,'Enable','Off');
                set(handles.dL4_345,'Enable','Off');
                set(handles.cL4_345,'Enable','On');
                set(handles.rL4bp_345,'Enable','Off');                                   
        end
        
    end
end


% --------------------------------------------------------------------
function cL4_345_Callback(hObject, eventdata, handles)
global byPassActivo3 estado3;
for i=1:4
    bypass =  strcat('bl',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes34);
    pause(2);
end
estado3(4)=1;
set(handles.cL4_345,'Enable','Off');
set(handles.dL4_345,'Enable','On');
if(byPassActivo3==1)
    set(handles.cL4bp_345,'Enable','Off');
else
    set(handles.cL4bp_345,'Enable','On');
end
set(handles.rL4bp_345,'Enable','Off');


% --------------------------------------------------------------------
function dL4_345_Callback(hObject, eventdata, handles)
global estado3;
for i=4:7
    bypass =  strcat('bl',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes34);
    pause(2);
end
estado3(4)=0;
set(handles.cL4_345,'Enable','On');
set(handles.dL4_345,'Enable','Off');
set(handles.cL4bp_345,'Enable','Off');
set(handles.rL4bp_345,'Enable','Off');



% --------------------------------------------------------------------
function cL4bp_345_Callback(hObject, eventdata, handles)
%Conectar con ByPass L4 34.5kV
global byPassActivo3;
byPassActivo3=1;
pause(2)    
bypass =  strcat('bt1.png');
imshow(bypass,'Parent',handles.axes34);
for i=1:4
    bypass =  strcat('bp2',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes30);
    pause(2)
end
for i=2:4
    bypass =  strcat('bt',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes34);
    pause(2)
end
set(handles.cL4_345,'Enable','Off');
set(handles.dL4_345,'Enable','Off');
set(handles.cL4bp_345,'Enable','Off');
set(handles.rL4bp_345,'Enable','On');
%Deshabilitar Otros
set(handles.cL1bp_345,'Enable','Off');
set(handles.cL2bp_345,'Enable','Off');
set(handles.cL3bp_345,'Enable','Off');


% --------------------------------------------------------------------
function rL4bp_345_Callback(hObject, eventdata, handles)
%Reposición de Línea 4 por su ByPass
global byPassActivo3 estado3;
byPassActivo3=0;
for i=4:7
    bypass =  strcat('bt',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes34);
    pause(2)
end
for i=5:7
    bypass =  strcat('bp2',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes30);
    pause(2)
end
bypass =  'bl4.png';
imshow(bypass,'Parent',handles.axes34);
set(handles.cL4_345,'Enable','Off');
set(handles.dL4_345,'Enable','On');
set(handles.cL4bp_345,'Enable','On');
set(handles.rL4bp_345,'Enable','Off');
for i=1:4
    if(estado3(i)==1)
        switch(i)
            case 1
                set(handles.cL1bp_345,'Enable','On');
                set(handles.dL1_345,'Enable','On');
                set(handles.cL1_345,'Enable','Off');
                set(handles.rL1bp_345,'Enable','Off');
            case 2
                set(handles.cL2bp_345,'Enable','On');
                set(handles.dL2_345,'Enable','On');
                set(handles.cL2_345,'Enable','Off');
                set(handles.rL2bp_345,'Enable','Off');   
            case 3
                set(handles.cL3bp_345,'Enable','On');
                set(handles.dL3_345,'Enable','On');
                set(handles.cL3_345,'Enable','Off');
                set(handles.rL3bp_345,'Enable','Off'); 
            case 4
                set(handles.cL4bp_345,'Enable','On');
                set(handles.dL4_345,'Enable','On');
                set(handles.cL4_345,'Enable','Off');
                set(handles.rL4bp_345,'Enable','Off');               
        end
    else
        switch(i)
            case 1
                set(handles.cL1bp_345,'Enable','Off');
                set(handles.dL1_345,'Enable','Off');
                set(handles.cL1_345,'Enable','On');
                set(handles.rL1bp_345,'Enable','Off');
            case 2
                set(handles.cL2bp_345,'Enable','Off');
                set(handles.dL2_345,'Enable','Off');
                set(handles.cL2_345,'Enable','On');
                set(handles.rL2bp_345,'Enable','Off');   
            case 3
                set(handles.cL3bp_345,'Enable','Off');
                set(handles.dL3_345,'Enable','Off');
                set(handles.cL3_345,'Enable','On');
                set(handles.rL3bp_345,'Enable','Off'); 
            case 4
                set(handles.cL4bp_345,'Enable','Off');
                set(handles.dL4_345,'Enable','Off');
                set(handles.cL4_345,'Enable','On');
                set(handles.rL4bp_345,'Enable','Off');                                   
        end
        
    end
end

% --------------------------------------------------------------------
function Untitled_24_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_25_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_26_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_27_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_28_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_29_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_30_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_31_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_32_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function conecB1B2_Callback(hObject, eventdata, handles)
for i=1:4
    bypass =  strcat('union_12',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes13);
    pause(2);
end

set(handles.conecB1B2,'Enable','Off');
set(handles.desconecB1B2,'Enable','On');



% --------------------------------------------------------------------
function desconecB1B2_Callback(hObject, eventdata, handles)
for i=4:7
    bypass =  strcat('union_12',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes13);
    pause(2);
end

set(handles.conecB1B2,'Enable','On');
set(handles.desconecB1B2,'Enable','Off');


% --------------------------------------------------------------------
function conecB3B4_Callback(hObject, eventdata, handles)
for i=1:3
    bypass =  strcat('union_34',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes40);
    pause(2);
end

set(handles.conecB3B4,'Enable','Off');
set(handles.desconecB3B4,'Enable','On');


% --------------------------------------------------------------------
function desconecB3B4_Callback(hObject, eventdata, handles)
for i=3:5
    bypass =  strcat('union_34',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes40);
    pause(2);
end

set(handles.conecB3B4,'Enable','On');
set(handles.desconecB3B4,'Enable','Off');


% --------------------------------------------------------------------
function Untitled_41_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function cBT_TX4_Callback(hObject, eventdata, handles)
% hObject    handle to cBT_TX4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_39_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function cBT_TX3_Callback(hObject, eventdata, handles)
% hObject    handle to cBT_TX3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_37_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function cBT_TX2_Callback(hObject, eventdata, handles)
% hObject    handle to cBT_TX2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_35_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function ladoBT_Callback(hObject, eventdata, handles)
% hObject    handle to ladoBT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --------------------------------------------------------------------
function Untitled_43_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function cBT_TX5_Callback(hObject, eventdata, handles)
% hObject    handle to cBT_TX5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --------------------------------------------------------------------
function conecBT1_Callback(hObject, eventdata, handles)
%Conectar TX1 lado de baja
for i=1:3
    bypass =  strcat('TXdb',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes39);
    pause(2);
end
set(handles.conecBT1,'Enable','Off');
set(handles.DesconecBT1,'Enable','On');


% --------------------------------------------------------------------
function DesconecBT1_Callback(hObject, eventdata, handles)
%Desconectar TX1 lado de baja
for i=3:-1:1
    bypass =  strcat('TXdb',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes39);
    pause(2);
end
set(handles.conecBT1,'Enable','On');
set(handles.DesconecBT1,'Enable','Off');

% --------------------------------------------------------------------
function conecBT2_Callback(hObject, eventdata, handles)
%Conectar TX2 lado de baja
for i=1:3
    bypass =  strcat('TXdb',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes38);
    pause(2);
end
set(handles.conecBT2,'Enable','Off');
set(handles.DesconecBT2,'Enable','On');


% --------------------------------------------------------------------
function DesconecBT2_Callback(hObject, eventdata, handles)
%Desconectar TX1 lado de baja
for i=3:-1:1
    bypass =  strcat('TXdb',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes38);
    pause(2);
end
set(handles.conecBT2,'Enable','On');
set(handles.DesconecBT2,'Enable','Off');


% --------------------------------------------------------------------
function conecBT5_Callback(hObject, eventdata, handles)
%Conectar TX5 lado de baja
for i=1:3
    bypass =  strcat('TXdb',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes44);
    pause(2);
end
set(handles.conecBT5,'Enable','Off');
set(handles.DesconecBT5,'Enable','On');


% --------------------------------------------------------------------
function DesconecBT5_Callback(hObject, eventdata, handles)
%Desconectar TX5 lado de baja
for i=3:-1:1
    bypass =  strcat('TXdb',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes44);
    pause(2);
end
set(handles.conecBT5,'Enable','On');
set(handles.DesconecBT5,'Enable','Off');


% --------------------------------------------------------------------
function conecBT6_Callback(hObject, eventdata, handles)
%Conectar TX6 lado de baja
for i=1:3
    bypass =  strcat('TX6',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes47);
    pause(2);
end
set(handles.conecBT6,'Enable','Off');
set(handles.DesconecBT6,'Enable','On');

% --------------------------------------------------------------------
function DesconecBT6_Callback(hObject, eventdata, handles)
%Desconectar TX6 lado de baja
for i=3:-1:1
    bypass =  strcat('TX6',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes47);
    pause(2);
end
set(handles.conecBT6,'Enable','On');
set(handles.DesconecBT6,'Enable','Off');

function ladoBT6_Callback(hObject, eventdata, handles)


% --------------------------------------------------------------------
function conecBT3_Callback(hObject, eventdata, handles)
%Conectar TX3 lado de baja
for i=1:3
    bypass =  strcat('TXbb',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes45);
    pause(2);
end
set(handles.conecBT3,'Enable','Off');
set(handles.DesconecBT3,'Enable','On');


% --------------------------------------------------------------------
function DesconecBT3_Callback(hObject, eventdata, handles)
%Desconectar TX3 lado de baja
for i=3:-1:1
    bypass =  strcat('TXbb',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes45);
    pause(2);
end
set(handles.conecBT3,'Enable','On');
set(handles.DesconecBT3,'Enable','Off');


% --------------------------------------------------------------------
function conecBT4_Callback(hObject, eventdata, handles)
%Conectar TX4 lado de baja
for i=1:3
    bypass =  strcat('TXbb',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes46);
    pause(2);
end
set(handles.conecBT4,'Enable','Off');
set(handles.DesconecBT4,'Enable','On');


% --------------------------------------------------------------------
function DesconecBT4_Callback(hObject, eventdata, handles)
%Desconectar TX4 lado de baja
for i=3:-1:1
    bypass =  strcat('TXbb',num2str(i),'.png');
    imshow(bypass,'Parent',handles.axes46);
    pause(2);
end
set(handles.conecBT4,'Enable','On');
set(handles.DesconecBT4,'Enable','Off');


% --------------------------------------------------------------------
function Untitled_58_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_58 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function unidad1_Callback(hObject, eventdata, handles)
winopen('Unidad1.docx');


% --------------------------------------------------------------------
function unidad2_Callback(hObject, eventdata, handles)
winopen('Unidad2.docx');


% --------------------------------------------------------------------
function unidad3_Callback(hObject, eventdata, handles)
winopen('Unidad3.docx');

% --------------------------------------------------------------------
function unidad4_Callback(hObject, eventdata, handles)
winopen('Unidad4.docx');


% --------------------------------------------------------------------
function unidad5_Callback(hObject, eventdata, handles)
winopen('Unidad5.docx');


% --------------------------------------------------------------------
function Untitled_62_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_63_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_63 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_64_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_64 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_65_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_65 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_66_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_66 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_67_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_67 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_68_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_68 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_69_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_69 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_70_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_70 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_71_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_71 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_72_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_72 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_73_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_73 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_74_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_74 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_75_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_75 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_76_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_76 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_77_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_77 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_78_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_78 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_79_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_79 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_80_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_80 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_81_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_81 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function spt1_conec_Callback(hObject, eventdata, handles)
global estado;
%Al conectar
if(estado(1)==0)
    %conectar SPT
    imshow('dl1.png','Parent',handles.axes1);
    pause(2);
    imshow('dl8.png','Parent',handles.axes1);
    pause(2);
    set(handles.spt1_conec,'Enable','Off');
    set(handles.spt1_desc,'Enable','On');
    set(handles.cL1_138,'Enable','Off');
    estado(1)=1;
end
    

% --------------------------------------------------------------------
function spt1_desc_Callback(hObject, eventdata, handles)
global estado;
if(estado(1)==1)
    %Desconectar SPT
    imshow('dl8.png','Parent',handles.axes1);
    pause(2);
    imshow('dl1.png','Parent',handles.axes1);
    pause(2);    
    set(handles.spt1_conec,'Enable','On');
    set(handles.spt1_desc,'Enable','Off');
    set(handles.cL1_138,'Enable','On');
    estado(1)=0;
end


% --------------------------------------------------------------------
function spt2_conec_Callback(hObject, eventdata, handles)
global estado;
%Al conectar
if(estado(2)==0)
    %conectar SPT
    imshow('dl1.png','Parent',handles.axes2);
    pause(2);
    imshow('dl8.png','Parent',handles.axes2);
    pause(2);
    set(handles.spt2_conec,'Enable','Off');
    set(handles.spt2_desc,'Enable','On');
    set(handles.cL2_138,'Enable','Off');
    estado(2)=1;
end


% --------------------------------------------------------------------
function spt2_desc_Callback(hObject, eventdata, handles)
global estado;
if(estado(2)==1)
    %Desconectar SPT
    imshow('dl8.png','Parent',handles.axes2);
    pause(2);
    imshow('dl1.png','Parent',handles.axes2);
    pause(2);    
    set(handles.spt2_conec,'Enable','On');
    set(handles.spt2_desc,'Enable','Off');
    set(handles.cL2_138,'Enable','On');
    estado(2)=0;
end


% --------------------------------------------------------------------
function spt13_conec_Callback(hObject, eventdata, handles)
global estado2;
%Al conectar
if(estado2(2)==0)
    %conectar SPT
    imshow('dl1.png','Parent',handles.axes27);
    pause(2);
    imshow('dl8.png','Parent',handles.axes27);
    pause(2);
    set(handles.spt13_conec,'Enable','Off');
    set(handles.spt13_desc,'Enable','On');
    set(handles.cL13_138,'Enable','Off');
    estado2(2)=1;
end


% --------------------------------------------------------------------
function spt13_desc_Callback(hObject, eventdata, handles)
global estado2;
if(estado2(2)==1)
    %Desconectar SPT
    imshow('dl8.png','Parent',handles.axes27);
    pause(2);
    imshow('dl1.png','Parent',handles.axes27);
    pause(2);    
    set(handles.spt13_conec,'Enable','On');
    set(handles.spt13_desc,'Enable','Off');
    set(handles.cL13_138,'Enable','On');
    estado2(2)=0;
end


% --------------------------------------------------------------------
function spt12_conec_Callback(hObject, eventdata, handles)
global estado2;
%Al conectar
if(estado2(1)==0)
    %conectar SPT
    imshow('dl1.png','Parent',handles.axes26);
    pause(2);
    imshow('dl8.png','Parent',handles.axes26);
    pause(2);
    set(handles.spt12_conec,'Enable','Off');
    set(handles.spt12_desc,'Enable','On');
    set(handles.cL12_138,'Enable','Off');
    estado2(1)=1;
end


% --------------------------------------------------------------------
function spt12_desc_Callback(hObject, eventdata, handles)
global estado2;
if(estado2(1)==1)
    %Desconectar SPT
    imshow('dl8.png','Parent',handles.axes26);
    pause(2);
    imshow('dl1.png','Parent',handles.axes26);
    pause(2);    
    set(handles.spt12_conec,'Enable','On');
    set(handles.spt12_desc,'Enable','Off');
    set(handles.cL12_138,'Enable','On');
    estado2(1)=0;
end


% --------------------------------------------------------------------
function spt11_conec_Callback(hObject, eventdata, handles)
global estado;
%Al conectar
if(estado(11)==0)
    %conectar SPT
    imshow('dl1.png','Parent',handles.axes11);
    pause(2);
    imshow('dl8.png','Parent',handles.axes11);
    pause(2);
    set(handles.spt11_conec,'Enable','Off');
    set(handles.spt11_desc,'Enable','On');
    set(handles.cL11_138,'Enable','Off');
    estado(11)=1;
end


% --------------------------------------------------------------------
function spt11_desc_Callback(hObject, eventdata, handles)
global estado;
if(estado(11)==1)
    %Desconectar SPT
    imshow('dl8.png','Parent',handles.axes11);
    pause(2);
    imshow('dl1.png','Parent',handles.axes11);
    pause(2);    
    set(handles.spt11_conec,'Enable','On');
    set(handles.spt11_desc,'Enable','Off');
    set(handles.cL11_138,'Enable','On');
    estado(11)=0;
end


% --------------------------------------------------------------------
function spt10_conec_Callback(hObject, eventdata, handles)
global estado;
%Al conectar
if(estado(10)==0)
    %conectar SPT
    imshow('dl1.png','Parent',handles.axes10);
    pause(2);
    imshow('dl8.png','Parent',handles.axes10);
    pause(2);
    set(handles.spt10_conec,'Enable','Off');
    set(handles.spt10_desc,'Enable','On');
    set(handles.cL10_138,'Enable','Off');
    estado(10)=1;
end


% --------------------------------------------------------------------
function spt10_desc_Callback(hObject, eventdata, handles)
global estado;
if(estado(10)==1)
    %Desconectar SPT
    imshow('dl8.png','Parent',handles.axes10);
    pause(2);
    imshow('dl1.png','Parent',handles.axes10);
    pause(2);    
    set(handles.spt10_conec,'Enable','On');
    set(handles.spt10_desc,'Enable','Off');
    set(handles.cL10_138,'Enable','On');
    estado(10)=0;
end


% --------------------------------------------------------------------
function spt9_conec_Callback(hObject, eventdata, handles)
global estado;
%Al conectar
if(estado(9)==0)
    %conectar SPT
    imshow('dl1.png','Parent',handles.axes9);
    pause(2);
    imshow('dl8.png','Parent',handles.axes9);
    pause(2);
    set(handles.spt9_conec,'Enable','Off');
    set(handles.spt9_desc,'Enable','On');
    set(handles.cL9_138,'Enable','Off');
    estado(9)=1;
end


% --------------------------------------------------------------------
function spt9_desc_Callback(hObject, eventdata, handles)
global estado;
if(estado(9)==1)
    %Desconectar SPT
    imshow('dl8.png','Parent',handles.axes9);
    pause(2);
    imshow('dl1.png','Parent',handles.axes9);
    pause(2);    
    set(handles.spt9_conec,'Enable','On');
    set(handles.spt9_desc,'Enable','Off');
    set(handles.cL9_138,'Enable','On');
    estado(9)=0;
end


% --------------------------------------------------------------------
function spt8_conec_Callback(hObject, eventdata, handles)
global estado;
%Al conectar
if(estado(8)==0)
    %conectar SPT
    imshow('dl1.png','Parent',handles.axes8);
    pause(2);
    imshow('dl8.png','Parent',handles.axes8);
    pause(2);
    set(handles.spt8_conec,'Enable','Off');
    set(handles.spt8_desc,'Enable','On');
    set(handles.cL8_138,'Enable','Off');
    estado(8)=1;
end


% --------------------------------------------------------------------
function spt8_desc_Callback(hObject, eventdata, handles)
global estado;
if(estado(8)==1)
    %Desconectar SPT
    imshow('dl8.png','Parent',handles.axes8);
    pause(2);
    imshow('dl1.png','Parent',handles.axes8);
    pause(2);    
    set(handles.spt8_conec,'Enable','On');
    set(handles.spt8_desc,'Enable','Off');
    set(handles.cL8_138,'Enable','On');
    estado(8)=0;
end


% --------------------------------------------------------------------
function spt7_conec_Callback(hObject, eventdata, handles)
global estado;
%Al conectar
if(estado(7)==0)
    %conectar SPT
    imshow('dl1.png','Parent',handles.axes7);
    pause(2);
    imshow('dl8.png','Parent',handles.axes7);
    pause(2);
    set(handles.spt7_conec,'Enable','Off');
    set(handles.spt7_desc,'Enable','On');
    set(handles.cL7_138,'Enable','Off');
    estado(7)=1;
end


% --------------------------------------------------------------------
function spt7_desc_Callback(hObject, eventdata, handles)
global estado;
if(estado(7)==1)
    %Desconectar SPT
    imshow('dl8.png','Parent',handles.axes7);
    pause(2);
    imshow('dl1.png','Parent',handles.axes7);
    pause(2);    
    set(handles.spt7_conec,'Enable','On');
    set(handles.spt7_desc,'Enable','Off');
    set(handles.cL7_138,'Enable','On');
    estado(7)=0;
end


% --------------------------------------------------------------------
function spt6_conec_Callback(hObject, eventdata, handles)
global estado;
%Al conectar
if(estado(6)==0)
    %conectar SPT
    imshow('dl1.png','Parent',handles.axes6);
    pause(2);
    imshow('dl8.png','Parent',handles.axes6);
    pause(2);
    set(handles.spt6_conec,'Enable','Off');
    set(handles.spt6_desc,'Enable','On');
    set(handles.cL6_138,'Enable','Off');
    estado(6)=1;
end


% --------------------------------------------------------------------
function spt6_desc_Callback(hObject, eventdata, handles)
global estado;
if(estado(6)==1)
    %Desconectar SPT
    imshow('dl8.png','Parent',handles.axes6);
    pause(2);
    imshow('dl1.png','Parent',handles.axes6);
    pause(2);    
    set(handles.spt6_conec,'Enable','On');
    set(handles.spt6_desc,'Enable','Off');
    set(handles.cL6_138,'Enable','On');
    estado(6)=0;
end


% --------------------------------------------------------------------
function spt5_conec_Callback(hObject, eventdata, handles)
global estado;
%Al conectar
if(estado(5)==0)
    %conectar SPT
    imshow('dl1.png','Parent',handles.axes5);
    pause(2);
    imshow('dl8.png','Parent',handles.axes5);
    pause(2);
    set(handles.spt5_conec,'Enable','Off');
    set(handles.spt5_desc,'Enable','On');
    set(handles.cL5_138,'Enable','Off');
    estado(5)=1;
end


% --------------------------------------------------------------------
function spt5_desc_Callback(hObject, eventdata, handles)
global estado;
if(estado(5)==1)
    %Desconectar SPT
    imshow('dl8.png','Parent',handles.axes5);
    pause(2);
    imshow('dl1.png','Parent',handles.axes5);
    pause(2);    
    set(handles.spt5_conec,'Enable','On');
    set(handles.spt5_desc,'Enable','Off');
    set(handles.cL5_138,'Enable','On');
    estado(5)=0;
end


% --------------------------------------------------------------------
function spt4_conec_Callback(hObject, eventdata, handles)
global estado;
%Al conectar
if(estado(4)==0)
    %conectar SPT
    imshow('dl1.png','Parent',handles.axes4);
    pause(2);
    imshow('dl8.png','Parent',handles.axes4);
    pause(2);
    set(handles.spt4_conec,'Enable','Off');
    set(handles.spt4_desc,'Enable','On');
    set(handles.cL4_138,'Enable','Off');
    estado(4)=1;
end


% --------------------------------------------------------------------
function spt4_desc_Callback(hObject, eventdata, handles)
global estado;
if(estado(4)==1)
    %Desconectar SPT
    imshow('dl8.png','Parent',handles.axes4);
    pause(2);
    imshow('dl1.png','Parent',handles.axes4);
    pause(2);    
    set(handles.spt4_conec,'Enable','On');
    set(handles.spt4_desc,'Enable','Off');
    set(handles.cL4_138,'Enable','On');
    estado(4)=0;
end


% --------------------------------------------------------------------
function spt3_conec_Callback(hObject, eventdata, handles)
global estado;
%Al conectar
if(estado(3)==0)
    %conectar SPT
    imshow('dl1.png','Parent',handles.axes3);
    pause(2);
    imshow('dl8.png','Parent',handles.axes3);
    pause(2);
    set(handles.spt3_conec,'Enable','Off');
    set(handles.spt3_desc,'Enable','On');
    set(handles.cL3_138,'Enable','Off');
    estado(3)=1;
end


% --------------------------------------------------------------------
function spt3_desc_Callback(hObject, eventdata, handles)
global estado;
if(estado(3)==1)
    %Desconectar SPT
    imshow('dl8.png','Parent',handles.axes3);
    pause(2);
    imshow('dl1.png','Parent',handles.axes3);
    pause(2);    
    set(handles.spt3_conec,'Enable','On');
    set(handles.spt3_desc,'Enable','Off');
    set(handles.cL3_138,'Enable','On');
    estado(3)=0;
end


% --------------------------------------------------------------------
function spt15_conec_Callback(hObject, eventdata, handles)
global estado2;
%Al conectar
if(estado2(4)==0)
    %conectar SPT
    imshow('dl1.png','Parent',handles.axes29);
    pause(2);
    imshow('dl8.png','Parent',handles.axes29);
    pause(2);
    set(handles.spt15_conec,'Enable','Off');
    set(handles.spt15_desc,'Enable','On');
    set(handles.cL15_138,'Enable','Off');
    estado2(4)=1;
end


% --------------------------------------------------------------------
function spt15_desc_Callback(hObject, eventdata, handles)
global estado2;
if(estado2(4)==1)
    %Desconectar SPT
    imshow('dl8.png','Parent',handles.axes29);
    pause(2);
    imshow('dl1.png','Parent',handles.axes29);
    pause(2);    
    set(handles.spt15_conec,'Enable','On');
    set(handles.spt15_desc,'Enable','Off');
    set(handles.cL15_138,'Enable','On');
    estado2(4)=0;
end


% --------------------------------------------------------------------
function spt14_conec_Callback(hObject, eventdata, handles)
global estado2;
%Al conectar
if(estado2(3)==0)
    %conectar SPT
    imshow('dl1.png','Parent',handles.axes28);
    pause(2);
    imshow('dl8.png','Parent',handles.axes28);
    pause(2);
    set(handles.spt14_conec,'Enable','Off');
    set(handles.spt14_desc,'Enable','On');
    set(handles.cL14_138,'Enable','Off');
    estado2(3)=1;
end


% --------------------------------------------------------------------
function spt14_desc_Callback(hObject, eventdata, handles)
global estado2;
if(estado2(3)==1)
    %Desconectar SPT
    imshow('dl8.png','Parent',handles.axes28);
    pause(2);
    imshow('dl1.png','Parent',handles.axes28);
    pause(2);    
    set(handles.spt14_conec,'Enable','On');
    set(handles.spt14_desc,'Enable','Off');
    set(handles.cL14_138,'Enable','On');
    estado2(3)=0;
end

% --------------------------------------------------------------------
function spt19_conec_Callback(hObject, eventdata, handles)
global estado3;
%Al conectar
if(estado3(4)==0)
    %conectar SPT
    imshow('bl1.png','Parent',handles.axes34);
    pause(2);
    imshow('bl8.png','Parent',handles.axes34);
    pause(2);
    set(handles.spt19_conec,'Enable','Off');
    set(handles.spt19_desc,'Enable','On');
    set(handles.cL4_345,'Enable','Off');
    estado3(4)=1;
end


% --------------------------------------------------------------------
function spt19_desc_Callback(hObject, eventdata, handles)
global estado3;
if(estado3(4)==1)
    %Desconectar SPT
    imshow('bl8.png','Parent',handles.axes34);
    pause(2);
    imshow('bl1.png','Parent',handles.axes34);
    pause(2);    
    set(handles.spt19_conec,'Enable','On');
    set(handles.spt19_desc,'Enable','Off');
    set(handles.cL4_345,'Enable','On');
    estado3(4)=0;
end


% --------------------------------------------------------------------
function spt18_conec_Callback(hObject, eventdata, handles)
global estado3;
%Al conectar
if(estado3(3)==0)
    %conectar SPT
    imshow('bl1.png','Parent',handles.axes33);
    pause(2);
    imshow('bl8.png','Parent',handles.axes33);
    pause(2);
    set(handles.spt18_conec,'Enable','Off');
    set(handles.spt18_desc,'Enable','On');
    set(handles.cL3_345,'Enable','Off');
    estado3(3)=1;
end


% --------------------------------------------------------------------
function spt18_desc_Callback(hObject, eventdata, handles)
global estado3;
if(estado3(3)==1)
    %Desconectar SPT
    imshow('bl8.png','Parent',handles.axes33);
    pause(2);
    imshow('bl1.png','Parent',handles.axes33);
    pause(2);    
    set(handles.spt18_conec,'Enable','On');
    set(handles.spt18_desc,'Enable','Off');
    set(handles.cL3_345,'Enable','On');
    estado3(3)=0;
end


% --------------------------------------------------------------------
function spt17_conec_Callback(hObject, eventdata, handles)
global estado3;
%Al conectar
if(estado3(2)==0)
    %conectar SPT
    imshow('bl1.png','Parent',handles.axes32);
    pause(2);
    imshow('bl8.png','Parent',handles.axes32);
    pause(2);
    set(handles.spt17_conec,'Enable','Off');
    set(handles.spt17_desc,'Enable','On');
    set(handles.cL2_345,'Enable','Off');
    estado3(2)=1;
end


% --------------------------------------------------------------------
function spt17_desc_Callback(hObject, eventdata, handles)
global estado3;
if(estado3(2)==1)
    %Desconectar SPT
    imshow('bl8.png','Parent',handles.axes32);
    pause(2);
    imshow('bl1.png','Parent',handles.axes32);
    pause(2);    
    set(handles.spt17_conec,'Enable','On');
    set(handles.spt17_desc,'Enable','Off');
    set(handles.cL2_345,'Enable','On');
    estado3(2)=0;
end


% --------------------------------------------------------------------
function spt16_conec_Callback(hObject, eventdata, handles)
global estado3;
%Al conectar
if(estado3(1)==0)
    %conectar SPT
    imshow('bl1.png','Parent',handles.axes31);
    pause(2);
    imshow('bl8.png','Parent',handles.axes31);
    pause(2);
    set(handles.spt16_conec,'Enable','Off');
    set(handles.spt16_desc,'Enable','On');
    set(handles.cL1_345,'Enable','Off');
    estado3(1)=1;
end


% --------------------------------------------------------------------
function spt16_desc_Callback(hObject, eventdata, handles)
global estado3;
if(estado3(1)==1)
    %Desconectar SPT
    imshow('bl8.png','Parent',handles.axes31);
    pause(2);
    imshow('bl1.png','Parent',handles.axes31);
    pause(2);    
    set(handles.spt16_conec,'Enable','On');
    set(handles.spt16_desc,'Enable','Off');
    set(handles.cL1_345,'Enable','On');
    estado3(1)=0;
end




% --------------------------------------------------------------------
function Untitled_82_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_82 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function monofasicaT_Callback(hObject, eventdata, handles)
% hObject    handle to monofasicaT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function bifasicaT_Callback(hObject, eventdata, handles)
% hObject    handle to bifasicaT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function bifasica_Callback(hObject, eventdata, handles)
% hObject    handle to bifasica (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function trifasica_Callback(hObject, eventdata, handles)
% hObject    handle to trifasica (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function fallaMonofBP_Callback(hObject, eventdata, handles)
global hayDatos tipo barra Imonof;

if(hayDatos==1)
    tipo = 1;
    barra = 1;
    imshow('falla.png','Parent',handles.axes74);
    set(get(handles.axes68,'children'),'Visible','Off');
    set(get(handles.axes69,'children'),'Visible','Off');
    set(get(handles.axes70,'children'),'Visible','Off');
    set(get(handles.axes71,'children'),'Visible','Off');
    set(get(handles.axes72,'children'),'Visible','Off');
    set(get(handles.axes73,'children'),'Visible','Off');
    set(handles.labelResultado2,'String','');
    calcular;
    set(handles.labelBarra,'String','Barra N°1 115kV');
    set(handles.labelResultado,'String',Imonof);
    set(handles.labelTipo,'String','Monofásica');
else
    msgbox('Debes ingresar los datos de Nivel de Cortocircuito','Importante','warn');   
end
    


% --------------------------------------------------------------------
function fallaMonofB1_Callback(hObject, eventdata, handles)
global hayDatos tipo barra Imonof;
if(hayDatos==1)
    tipo = 1;
    barra = 2;
    imshow('falla.png','Parent',handles.axes68);
    set(get(handles.axes74,'children'),'Visible','Off');
    set(get(handles.axes69,'children'),'Visible','Off');
    set(get(handles.axes70,'children'),'Visible','Off');
    set(get(handles.axes71,'children'),'Visible','Off');
    set(get(handles.axes72,'children'),'Visible','Off');
    set(get(handles.axes73,'children'),'Visible','Off'); 
    set(handles.labelResultado2,'String','');
    calcular;
    set(handles.labelBarra,'String','Barra N°1 13.8kV');
    set(handles.labelResultado,'String',Imonof);
    set(handles.labelTipo,'String','Monofásica');
else
    msgbox('Debes ingresar los datos de Nivel de Cortocircuito','Importante','warn');   
end


% --------------------------------------------------------------------
function fallaMonofB2_Callback(hObject, eventdata, handles)
global hayDatos tipo barra Imonof;
if(hayDatos==1)
    tipo = 1;
    barra = 3;
    imshow('falla.png','Parent',handles.axes69);
    set(get(handles.axes68,'children'),'Visible','Off');
    set(get(handles.axes74,'children'),'Visible','Off');
    set(get(handles.axes70,'children'),'Visible','Off');
    set(get(handles.axes71,'children'),'Visible','Off');
    set(get(handles.axes72,'children'),'Visible','Off');
    set(get(handles.axes73,'children'),'Visible','Off'); 
    set(handles.labelResultado2,'String','');
    calcular;
    set(handles.labelBarra,'String','Barra N°2 13.8kV');
    set(handles.labelResultado,'String',Imonof);  
    set(handles.labelTipo,'String','Monofásica');
else
    msgbox('Debes ingresar los datos de Nivel de Cortocircuito','Importante','warn');   
end


% --------------------------------------------------------------------
function fallaMonofB3_Callback(hObject, eventdata, handles)
global hayDatos tipo barra Imonof;
if(hayDatos==1)
    tipo = 1;
    barra = 4;
    imshow('falla.png','Parent',handles.axes71);
    set(get(handles.axes68,'children'),'Visible','Off');
    set(get(handles.axes69,'children'),'Visible','Off');
    set(get(handles.axes74,'children'),'Visible','Off');
    set(get(handles.axes72,'children'),'Visible','Off');
    set(get(handles.axes70,'children'),'Visible','Off');
    set(get(handles.axes73,'children'),'Visible','Off'); 
    set(handles.labelResultado2,'String','');
    calcular;
    set(handles.labelBarra,'String','Barra N°3 34.5kV');
    set(handles.labelResultado,'String',Imonof);   
    set(handles.labelTipo,'String','Monofásica');
else
    msgbox('Debes ingresar los datos de Nivel de Cortocircuito','Importante','warn');   
end


% --------------------------------------------------------------------
function fallaMonofB4_Callback(hObject, eventdata, handles)
global hayDatos tipo barra Imonof;
if(hayDatos==1)
    tipo = 1;
    barra = 5;
    imshow('falla.png','Parent',handles.axes72);
    set(get(handles.axes68,'children'),'Visible','Off');
    set(get(handles.axes69,'children'),'Visible','Off');
    set(get(handles.axes70,'children'),'Visible','Off');
    set(get(handles.axes74,'children'),'Visible','Off');
    set(get(handles.axes73,'children'),'Visible','Off');
    set(get(handles.axes71,'children'),'Visible','Off');  
    set(handles.labelResultado2,'String','');
    calcular;
    set(handles.labelBarra,'String','Barra N°4 34.5kV');
    set(handles.labelResultado,'String',Imonof);  
    set(handles.labelTipo,'String','Monofásica');
else
    msgbox('Debes ingresar los datos de Nivel de Cortocircuito','Importante','warn');   
end


% --------------------------------------------------------------------
function fallaMonofB5_Callback(hObject, eventdata, handles)
global hayDatos tipo barra Imonof;
if(hayDatos==1)
    tipo = 1;
    barra = 6;
    imshow('falla.png','Parent',handles.axes73);
    set(get(handles.axes68,'children'),'Visible','Off');
    set(get(handles.axes69,'children'),'Visible','Off');
    set(get(handles.axes70,'children'),'Visible','Off');
    set(get(handles.axes71,'children'),'Visible','Off');
    set(get(handles.axes74,'children'),'Visible','Off');
    set(get(handles.axes72,'children'),'Visible','Off');
    set(handles.labelResultado2,'String','');
    calcular;
    set(handles.labelBarra,'String','Barra N°5 13.8kV');
    set(handles.labelResultado,'String',Imonof);   
    set(handles.labelTipo,'String','Monofásica');
else
    msgbox('Debes ingresar los datos de Nivel de Cortocircuito','Importante','warn');   
end


% --------------------------------------------------------------------
function fallaMonofB6_Callback(hObject, eventdata, handles)
global hayDatos tipo barra Imonof;
if(hayDatos==1)
    tipo = 1;
    barra = 7;
    imshow('falla.png','Parent',handles.axes70);
    set(get(handles.axes68,'children'),'Visible','Off');
    set(get(handles.axes69,'children'),'Visible','Off');
    set(get(handles.axes73,'children'),'Visible','Off');
    set(get(handles.axes71,'children'),'Visible','Off');
    set(get(handles.axes72,'children'),'Visible','Off');
    set(get(handles.axes74,'children'),'Visible','Off');
    set(handles.labelResultado2,'String','');
    calcular;
    set(handles.labelBarra,'String','Barra N°6 13.8kV');
    set(handles.labelResultado,'String',Imonof);  
    set(handles.labelTipo,'String','Monofásica');
else
    msgbox('Debes ingresar los datos de Nivel de Cortocircuito','Importante','warn');   
end


% --------------------------------------------------------------------
function nivelCC_Callback(hObject, eventdata, handles)
global hayDatos;
hayDatos=0;
nivelCortoC;


% --------------------------------------------------------------------
function fallaBifaTBP_Callback(hObject, eventdata, handles)
global hayDatos tipo barra Ibifat Ibifat2;
if(hayDatos==1)
    tipo = 3;
    barra = 1;
    imshow('falla.png','Parent',handles.axes74);
    set(get(handles.axes68,'children'),'Visible','Off');
    set(get(handles.axes69,'children'),'Visible','Off');
    set(get(handles.axes70,'children'),'Visible','Off');
    set(get(handles.axes71,'children'),'Visible','Off');
    set(get(handles.axes72,'children'),'Visible','Off');
    set(get(handles.axes73,'children'),'Visible','Off');    
    calcular;
    set(handles.labelBarra,'String','Barra N°1 115kV');
    set(handles.labelResultado,'String',Ibifat);
    set(handles.labelResultado2,'String',Ibifat2);
    set(handles.labelTipo,'String','Bifásica a Tierra');
else
    msgbox('Debes ingresar los datos de Nivel de Cortocircuito','Importante','warn');   
end


% --------------------------------------------------------------------
function fallaBifaTB1_Callback(hObject, eventdata, handles)
global hayDatos tipo barra Ibifat Ibifat2;
if(hayDatos==1)
    tipo = 3;
    barra = 2;
    imshow('falla.png','Parent',handles.axes68);
    set(get(handles.axes74,'children'),'Visible','Off');
    set(get(handles.axes69,'children'),'Visible','Off');
    set(get(handles.axes70,'children'),'Visible','Off');
    set(get(handles.axes71,'children'),'Visible','Off');
    set(get(handles.axes72,'children'),'Visible','Off');
    set(get(handles.axes73,'children'),'Visible','Off');     
    calcular;
    set(handles.labelBarra,'String','Barra N°1 13.8kV');
    set(handles.labelResultado,'String',Ibifat);
    set(handles.labelResultado2,'String',Ibifat2);
    set(handles.labelTipo,'String','Bifásica a Tierra');
else
    msgbox('Debes ingresar los datos de Nivel de Cortocircuito','Importante','warn');   
end


% --------------------------------------------------------------------
function fallaBifaTB2_Callback(hObject, eventdata, handles)
global hayDatos tipo barra Ibifat Ibifat2;
if(hayDatos==1)
    tipo = 3;
    barra = 3;
    imshow('falla.png','Parent',handles.axes69);
    set(get(handles.axes68,'children'),'Visible','Off');
    set(get(handles.axes74,'children'),'Visible','Off');
    set(get(handles.axes70,'children'),'Visible','Off');
    set(get(handles.axes71,'children'),'Visible','Off');
    set(get(handles.axes72,'children'),'Visible','Off');
    set(get(handles.axes73,'children'),'Visible','Off');      
    calcular;
    set(handles.labelBarra,'String','Barra N°2 13.8kV');
    set(handles.labelResultado,'String',Ibifat);  
    set(handles.labelResultado2,'String',Ibifat2);
    set(handles.labelTipo,'String','Bifásica a Tierra');
else
    msgbox('Debes ingresar los datos de Nivel de Cortocircuito','Importante','warn');   
end


% --------------------------------------------------------------------
function fallaBifaTB3_Callback(hObject, eventdata, handles)
global hayDatos tipo barra Ibifat Ibifat2;
if(hayDatos==1)
    tipo = 3;
    barra = 4;
    imshow('falla.png','Parent',handles.axes71);
    set(get(handles.axes68,'children'),'Visible','Off');
    set(get(handles.axes69,'children'),'Visible','Off');
    set(get(handles.axes74,'children'),'Visible','Off');
    set(get(handles.axes72,'children'),'Visible','Off');
    set(get(handles.axes70,'children'),'Visible','Off');
    set(get(handles.axes73,'children'),'Visible','Off');     
    calcular;
    set(handles.labelBarra,'String','Barra N°3 34.5kV');
    set(handles.labelResultado,'String',Ibifat); 
    set(handles.labelResultado2,'String',Ibifat2);
    set(handles.labelTipo,'String','Bifásica a Tierra');
else
    msgbox('Debes ingresar los datos de Nivel de Cortocircuito','Importante','warn');   
end



% --------------------------------------------------------------------
function fallaBifaTB4_Callback(hObject, eventdata, handles)
global hayDatos tipo barra Ibifat Ibifat2;
if(hayDatos==1)
    tipo = 3;
    barra = 5;
    imshow('falla.png','Parent',handles.axes72);
    set(get(handles.axes68,'children'),'Visible','Off');
    set(get(handles.axes69,'children'),'Visible','Off');
    set(get(handles.axes70,'children'),'Visible','Off');
    set(get(handles.axes74,'children'),'Visible','Off');
    set(get(handles.axes73,'children'),'Visible','Off');
    set(get(handles.axes71,'children'),'Visible','Off');     
    calcular;
    set(handles.labelBarra,'String','Barra N°4 34.5kV');
    set(handles.labelResultado,'String',Ibifat);  
    set(handles.labelResultado2,'String',Ibifat2);
    set(handles.labelTipo,'String','Bifásica a Tierra');
else
    msgbox('Debes ingresar los datos de Nivel de Cortocircuito','Importante','warn');   
end



% --------------------------------------------------------------------
function fallaBifaTB5_Callback(hObject, eventdata, handles)
global hayDatos tipo barra Ibifat Ibifat2;
if(hayDatos==1)
    tipo = 3;
    barra = 6;
    imshow('falla.png','Parent',handles.axes73);
    set(get(handles.axes68,'children'),'Visible','Off');
    set(get(handles.axes69,'children'),'Visible','Off');
    set(get(handles.axes70,'children'),'Visible','Off');
    set(get(handles.axes71,'children'),'Visible','Off');
    set(get(handles.axes74,'children'),'Visible','Off');
    set(get(handles.axes72,'children'),'Visible','Off');     
    calcular;
    set(handles.labelBarra,'String','Barra N°5 13.8kV');
    set(handles.labelResultado,'String',Ibifat);  
    set(handles.labelResultado2,'String',Ibifat2);
    set(handles.labelTipo,'String','Bifásica a Tierra');
else
    msgbox('Debes ingresar los datos de Nivel de Cortocircuito','Importante','warn');   
end



% --------------------------------------------------------------------
function fallaBifaTB6_Callback(hObject, eventdata, handles)
global hayDatos tipo barra Ibifat Ibifat2;
if(hayDatos==1)
    tipo = 3;
    barra = 7;
    imshow('falla.png','Parent',handles.axes70);
    set(get(handles.axes68,'children'),'Visible','Off');
    set(get(handles.axes69,'children'),'Visible','Off');
    set(get(handles.axes73,'children'),'Visible','Off');
    set(get(handles.axes71,'children'),'Visible','Off');
    set(get(handles.axes72,'children'),'Visible','Off');
    set(get(handles.axes74,'children'),'Visible','Off');     
    calcular;
    set(handles.labelBarra,'String','Barra N°6 13.8kV');
    set(handles.labelResultado,'String',Ibifat); 
    set(handles.labelResultado2,'String',Ibifat2);
    set(handles.labelTipo,'String','Bifásica a Tierra');
else
    msgbox('Debes ingresar los datos de Nivel de Cortocircuito','Importante','warn');   
end


% --------------------------------------------------------------------
function fallaBifaBP_Callback(hObject, eventdata, handles)
global hayDatos tipo barra Ibifa Ibifa2;
if(hayDatos==1)
    tipo = 2;
    barra = 1;
    imshow('falla.png','Parent',handles.axes74);
    set(get(handles.axes68,'children'),'Visible','Off');
    set(get(handles.axes69,'children'),'Visible','Off');
    set(get(handles.axes70,'children'),'Visible','Off');
    set(get(handles.axes71,'children'),'Visible','Off');
    set(get(handles.axes72,'children'),'Visible','Off');
    set(get(handles.axes73,'children'),'Visible','Off');    
    calcular;
    set(handles.labelBarra,'String','Barra N°1 115kV');
    set(handles.labelResultado,'String',Ibifa);  
    set(handles.labelResultado2,'String',Ibifa2);
    set(handles.labelTipo,'String','Bifásica');
else
    msgbox('Debes ingresar los datos de Nivel de Cortocircuito','Importante','warn');   
end


% --------------------------------------------------------------------
function fallaBifaB1_Callback(hObject, eventdata, handles)
global hayDatos tipo barra Ibifa Ibifa2;
if(hayDatos==1)
    tipo = 2;
    barra = 2;
    imshow('falla.png','Parent',handles.axes68);
    set(get(handles.axes74,'children'),'Visible','Off');
    set(get(handles.axes69,'children'),'Visible','Off');
    set(get(handles.axes70,'children'),'Visible','Off');
    set(get(handles.axes71,'children'),'Visible','Off');
    set(get(handles.axes72,'children'),'Visible','Off');
    set(get(handles.axes73,'children'),'Visible','Off');     
    calcular;
    set(handles.labelBarra,'String','Barra N°1 13.8kV');
    set(handles.labelResultado,'String',Ibifa); 
    set(handles.labelResultado2,'String',Ibifa2);
    set(handles.labelTipo,'String','Bifásica');
else
    msgbox('Debes ingresar los datos de Nivel de Cortocircuito','Importante','warn');   
end

% --------------------------------------------------------------------
function fallaBifaB2_Callback(hObject, eventdata, handles)
global hayDatos tipo barra Ibifa Ibifa2;
if(hayDatos==1)
    tipo = 2;
    barra = 3;
    imshow('falla.png','Parent',handles.axes69);
    set(get(handles.axes68,'children'),'Visible','Off');
    set(get(handles.axes74,'children'),'Visible','Off');
    set(get(handles.axes70,'children'),'Visible','Off');
    set(get(handles.axes71,'children'),'Visible','Off');
    set(get(handles.axes72,'children'),'Visible','Off');
    set(get(handles.axes73,'children'),'Visible','Off');      
    calcular;
    set(handles.labelBarra,'String','Barra N°2 13.8kV');
    set(handles.labelResultado,'String',Ibifa);   
    set(handles.labelResultado2,'String',Ibifa2);
    set(handles.labelTipo,'String','Bifásica');
else
    msgbox('Debes ingresar los datos de Nivel de Cortocircuito','Importante','warn');   
end


% --------------------------------------------------------------------
function fallaBifaB3_Callback(hObject, eventdata, handles)
global hayDatos tipo barra Ibifa Ibifa2;
if(hayDatos==1)
    tipo = 2;
    barra = 4;
    imshow('falla.png','Parent',handles.axes71);
    set(get(handles.axes68,'children'),'Visible','Off');
    set(get(handles.axes69,'children'),'Visible','Off');
    set(get(handles.axes74,'children'),'Visible','Off');
    set(get(handles.axes72,'children'),'Visible','Off');
    set(get(handles.axes70,'children'),'Visible','Off');
    set(get(handles.axes73,'children'),'Visible','Off');     
    calcular;
    set(handles.labelBarra,'String','Barra N°3 34.5kV');
    set(handles.labelResultado,'String',Ibifa); 
    set(handles.labelResultado2,'String',Ibifa2);
    set(handles.labelTipo,'String','Bifásica');
else
    msgbox('Debes ingresar los datos de Nivel de Cortocircuito','Importante','warn');   
end


% --------------------------------------------------------------------
function fallaBifaB4_Callback(hObject, eventdata, handles)
global hayDatos tipo barra Ibifa Ibifa2;
if(hayDatos==1)
    tipo = 2;
    barra = 5;
    imshow('falla.png','Parent',handles.axes72);
    set(get(handles.axes68,'children'),'Visible','Off');
    set(get(handles.axes69,'children'),'Visible','Off');
    set(get(handles.axes70,'children'),'Visible','Off');
    set(get(handles.axes74,'children'),'Visible','Off');
    set(get(handles.axes73,'children'),'Visible','Off');
    set(get(handles.axes71,'children'),'Visible','Off');     
    calcular;
    set(handles.labelBarra,'String','Barra N°4 34.5kV');
    set(handles.labelResultado,'String',Ibifa); 
    set(handles.labelResultado2,'String',Ibifa2);
    set(handles.labelTipo,'String','Bifásica');
else
    msgbox('Debes ingresar los datos de Nivel de Cortocircuito','Importante','warn');   
end


% --------------------------------------------------------------------
function fallaBifaB5_Callback(hObject, eventdata, handles)
global hayDatos tipo barra Ibifa Ibifa2;
if(hayDatos==1)
    tipo = 2;
    barra = 6;
    imshow('falla.png','Parent',handles.axes73);
    set(get(handles.axes68,'children'),'Visible','Off');
    set(get(handles.axes69,'children'),'Visible','Off');
    set(get(handles.axes70,'children'),'Visible','Off');
    set(get(handles.axes71,'children'),'Visible','Off');
    set(get(handles.axes74,'children'),'Visible','Off');
    set(get(handles.axes72,'children'),'Visible','Off');     
    calcular;
    set(handles.labelBarra,'String','Barra N°5 13.8kV');
    set(handles.labelResultado,'String',Ibifa); 
    set(handles.labelResultado2,'String',Ibifa2);
    set(handles.labelTipo,'String','Bifásica');
else
    msgbox('Debes ingresar los datos de Nivel de Cortocircuito','Importante','warn');   
end


% --------------------------------------------------------------------
function fallaBifaB6_Callback(hObject, eventdata, handles)
global hayDatos tipo barra Ibifa Ibifa2;
if(hayDatos==1)
    tipo = 2;
    barra = 7;
    imshow('falla.png','Parent',handles.axes70);
    set(get(handles.axes68,'children'),'Visible','Off');
    set(get(handles.axes69,'children'),'Visible','Off');
    set(get(handles.axes73,'children'),'Visible','Off');
    set(get(handles.axes71,'children'),'Visible','Off');
    set(get(handles.axes72,'children'),'Visible','Off');
    set(get(handles.axes74,'children'),'Visible','Off');     
    calcular;
    set(handles.labelBarra,'String','Barra N°6 13.8kV');
    set(handles.labelResultado,'String',Ibifa); 
    set(handles.labelResultado2,'String',Ibifa2);
    set(handles.labelTipo,'String','Bifásica');
else
    msgbox('Debes ingresar los datos de Nivel de Cortocircuito','Importante','warn');   
end


% --------------------------------------------------------------------
function fallaTrifaBP_Callback(hObject, eventdata, handles)
global hayDatos tipo barra Itrifa;
if(hayDatos==1)
    tipo = 4;
    barra = 1;
    imshow('falla.png','Parent',handles.axes74);
    set(get(handles.axes68,'children'),'Visible','Off');
    set(get(handles.axes69,'children'),'Visible','Off');
    set(get(handles.axes70,'children'),'Visible','Off');
    set(get(handles.axes71,'children'),'Visible','Off');
    set(get(handles.axes72,'children'),'Visible','Off');
    set(get(handles.axes73,'children'),'Visible','Off'); 
    set(handles.labelResultado2,'String','');
    calcular;
    set(handles.labelBarra,'String','Barra N°1 115kV');
    set(handles.labelResultado,'String',Itrifa);
    set(handles.labelTipo,'String','Trifásica');
else
    msgbox('Debes ingresar los datos de Nivel de Cortocircuito','Importante','warn');   
end


% --------------------------------------------------------------------
function fallaTrifaB1_Callback(hObject, eventdata, handles)
global hayDatos tipo barra Itrifa;
if(hayDatos==1)
    tipo = 4;
    barra = 2;
    imshow('falla.png','Parent',handles.axes68);
    set(get(handles.axes74,'children'),'Visible','Off');
    set(get(handles.axes69,'children'),'Visible','Off');
    set(get(handles.axes70,'children'),'Visible','Off');
    set(get(handles.axes71,'children'),'Visible','Off');
    set(get(handles.axes72,'children'),'Visible','Off');
    set(get(handles.axes73,'children'),'Visible','Off');  
    set(handles.labelResultado2,'String','');
    calcular;
    set(handles.labelBarra,'String','Barra N°1 13.8kV');
    set(handles.labelResultado,'String',Itrifa);  
    set(handles.labelTipo,'String','Trifásica');
else
    msgbox('Debes ingresar los datos de Nivel de Cortocircuito','Importante','warn');   
end


% --------------------------------------------------------------------
function fallaTrifaB2_Callback(hObject, eventdata, handles)
global hayDatos tipo barra Itrifa;
if(hayDatos==1)
    tipo = 4;
    barra = 3;
    imshow('falla.png','Parent',handles.axes69);
    set(get(handles.axes68,'children'),'Visible','Off');
    set(get(handles.axes74,'children'),'Visible','Off');
    set(get(handles.axes70,'children'),'Visible','Off');
    set(get(handles.axes71,'children'),'Visible','Off');
    set(get(handles.axes72,'children'),'Visible','Off');
    set(get(handles.axes73,'children'),'Visible','Off');  
    set(handles.labelResultado2,'String','');
    calcular;
    set(handles.labelBarra,'String','Barra N°2 13.8kV');
    set(handles.labelResultado,'String',Itrifa);  
    set(handles.labelTipo,'String','Trifásica');
else
    msgbox('Debes ingresar los datos de Nivel de Cortocircuito','Importante','warn');   
end


% --------------------------------------------------------------------
function fallaTrifaB3_Callback(hObject, eventdata, handles)
global hayDatos tipo barra Itrifa;
if(hayDatos==1)
    tipo = 4;
    barra = 4;
    imshow('falla.png','Parent',handles.axes71);
    set(get(handles.axes68,'children'),'Visible','Off');
    set(get(handles.axes69,'children'),'Visible','Off');
    set(get(handles.axes74,'children'),'Visible','Off');
    set(get(handles.axes72,'children'),'Visible','Off');
    set(get(handles.axes70,'children'),'Visible','Off');
    set(get(handles.axes73,'children'),'Visible','Off'); 
    set(handles.labelResultado2,'String','');
    calcular;
    set(handles.labelBarra,'String','Barra N°3 34.5kV');
    set(handles.labelResultado,'String',Itrifa); 
    set(handles.labelTipo,'String','Trifásica');
else
    msgbox('Debes ingresar los datos de Nivel de Cortocircuito','Importante','warn');   
end


% --------------------------------------------------------------------
function fallaTrifaB4_Callback(hObject, eventdata, handles)
global hayDatos tipo barra Itrifa;
if(hayDatos==1)
    tipo = 4;
    barra = 5;
    imshow('falla.png','Parent',handles.axes72);
    set(get(handles.axes68,'children'),'Visible','Off');
    set(get(handles.axes69,'children'),'Visible','Off');
    set(get(handles.axes70,'children'),'Visible','Off');
    set(get(handles.axes74,'children'),'Visible','Off');
    set(get(handles.axes73,'children'),'Visible','Off');
    set(get(handles.axes71,'children'),'Visible','Off'); 
    set(handles.labelResultado2,'String','');
    calcular;
    set(handles.labelBarra,'String','Barra N°4 34.5kV');
    set(handles.labelResultado,'String',Itrifa);
    set(handles.labelTipo,'String','Trifásica');
else
    msgbox('Debes ingresar los datos de Nivel de Cortocircuito','Importante','warn');   
end


% --------------------------------------------------------------------
function fallaTrifaB5_Callback(hObject, eventdata, handles)
global hayDatos tipo barra Itrifa;
if(hayDatos==1)
    tipo = 4;
    barra = 6;
    imshow('falla.png','Parent',handles.axes73);
    set(get(handles.axes68,'children'),'Visible','Off');
    set(get(handles.axes69,'children'),'Visible','Off');
    set(get(handles.axes70,'children'),'Visible','Off');
    set(get(handles.axes71,'children'),'Visible','Off');
    set(get(handles.axes74,'children'),'Visible','Off');
    set(get(handles.axes72,'children'),'Visible','Off');   
    set(handles.labelResultado2,'String','');
    calcular;
    set(handles.labelBarra,'String','Barra N°5 13.8kV');
    set(handles.labelResultado,'String',Itrifa);
    set(handles.labelTipo,'String','Trifásica');
else
    msgbox('Debes ingresar los datos de Nivel de Cortocircuito','Importante','warn');   
end


% --------------------------------------------------------------------
function fallaTrifaB6_Callback(hObject, eventdata, handles)
global hayDatos tipo barra Itrifa;
if(hayDatos==1)
    tipo = 4;
    barra = 7;
    imshow('falla.png','Parent',handles.axes70);
    set(get(handles.axes68,'children'),'Visible','Off');
    set(get(handles.axes69,'children'),'Visible','Off');
    set(get(handles.axes73,'children'),'Visible','Off');
    set(get(handles.axes71,'children'),'Visible','Off');
    set(get(handles.axes72,'children'),'Visible','Off');
    set(get(handles.axes74,'children'),'Visible','Off');  
    set(handles.labelResultado2,'String','');
    calcular;
    set(handles.labelBarra,'String','Barra N°6 13.8kV');
    set(handles.labelResultado,'String',Itrifa);
    set(handles.labelTipo,'String','Trifásica');
else
    msgbox('Debes ingresar los datos de Nivel de Cortocircuito','Importante','warn');   
end




% --------------------------------------------------------------------
function cB1TX1_Callback(hObject, eventdata, handles)
global pasoBarraT1;
if(pasoBarraT1==2)
   %transferencia
   imshow('bp1151.png','Parent',handles.axes51);
   pause(2);
   imshow('bp1152.png','Parent',handles.axes51);
   pause(2);  
   imshow('bp1153.png','Parent',handles.axes51);
   pause(2);   
   imshow('bp1154.png','Parent',handles.axes51);
   pause(2);
   imshow('TXa7.png','Parent',handles.axes54);
   pause(2);
   imshow('TXa3.png','Parent',handles.axes54);
   pause(2); 
   imshow('bp1153.png','Parent',handles.axes51);
   pause(2); 
   imshow('bp1152.png','Parent',handles.axes51);   
   pause(2); 
   imshow('bp1151.png','Parent',handles.axes51);   
   pasoBarraT1=1;
    set(handles.cB1TX1,'Enable','Off');
    set(handles.cB2TX1,'Enable','On');
    set(handles.dBTX1,'Enable','On');      
else
    imshow('TXa1.png','Parent',handles.axes54);
    pause(2);
    imshow('TXa2.png','Parent',handles.axes54);
    pause(2);
    imshow('TXa3.png','Parent',handles.axes54);
    pasoBarraT1 = 1;
    set(handles.cB1TX1,'Enable','Off');
    set(handles.cB2TX1,'Enable','On');
    set(handles.dBTX1,'Enable','On');    
end


    
% --------------------------------------------------------------------
function cB2TX1_Callback(hObject, eventdata, handles)
global pasoBarraT1;
if(pasoBarraT1==1)
   %transferencia B1 a B2
   imshow('bp1151.png','Parent',handles.axes51);
   pause(2);
   imshow('bp1152.png','Parent',handles.axes51);
   pause(2);  
   imshow('bp1153.png','Parent',handles.axes51);
   pause(2);   
   imshow('bp1154.png','Parent',handles.axes51);
   pause(2);
   imshow('TXa7.png','Parent',handles.axes54);
   pause(2);
   imshow('TXa6.png','Parent',handles.axes54);
   pause(2); 
   imshow('bp1153.png','Parent',handles.axes51);
   pause(2); 
   imshow('bp1152.png','Parent',handles.axes51);   
   pause(2); 
   imshow('bp1151.png','Parent',handles.axes51);   
   pasoBarraT1=2;
    set(handles.cB1TX1,'Enable','On');
    set(handles.cB2TX1,'Enable','Off');
    set(handles.dBTX1,'Enable','On');        
else
    imshow('TXa4.png','Parent',handles.axes54);
    pause(2);
    imshow('TXa5.png','Parent',handles.axes54);
    pause(2);
    imshow('TXa6.png','Parent',handles.axes54);
    pasoBarraT1 = 2;
    set(handles.cB1TX1,'Enable','On');
    set(handles.cB2TX1,'Enable','Off');
    set(handles.dBTX1,'Enable','On');     
end

% --------------------------------------------------------------------
function dBTX1_Callback(hObject, eventdata, handles)
global pasoBarraT1;
if(pasoBarraT1==1)
    imshow('TXa3.png','Parent',handles.axes54);
    pause(2);
    imshow('TXa2.png','Parent',handles.axes54);
    pause(2);
    imshow('TXa1.png','Parent',handles.axes54);
    pasoBarraT1 = 0;
    set(handles.cB1TX1,'Enable','On');
    set(handles.cB2TX1,'Enable','On');
    set(handles.dBTX1,'Enable','Off');      
else
    imshow('TXa6.png','Parent',handles.axes54);
    pause(2);
    imshow('TXa5.png','Parent',handles.axes54);
    pause(2);
    imshow('TXa4.png','Parent',handles.axes54);
    pasoBarraT1 = 0;
    set(handles.cB1TX1,'Enable','On');
    set(handles.cB2TX1,'Enable','On');
    set(handles.dBTX1,'Enable','Off');     
end

% --------------------------------------------------------------------
function cB1TX2_Callback(hObject, eventdata, handles)
global pasoBarraT2;
if(pasoBarraT2==2)
   %transferencia
   imshow('bp1151.png','Parent',handles.axes51);
   pause(2);
   imshow('bp1152.png','Parent',handles.axes51);
   pause(2);  
   imshow('bp1153.png','Parent',handles.axes51);
   pause(2);   
   imshow('bp1154.png','Parent',handles.axes51);
   pause(2);
   imshow('TXa7.png','Parent',handles.axes55);
   pause(2);
   imshow('TXa3.png','Parent',handles.axes55);
   pause(2); 
   imshow('bp1153.png','Parent',handles.axes51);
   pause(2); 
   imshow('bp1152.png','Parent',handles.axes51);   
   pause(2); 
   imshow('bp1151.png','Parent',handles.axes51);   
   pasoBarraT2=1;
    set(handles.cB1TX2,'Enable','Off');
    set(handles.cB2TX2,'Enable','On');
    set(handles.dBTX2,'Enable','On');      
else
    imshow('TXa1.png','Parent',handles.axes55);
    pause(2);
    imshow('TXa2.png','Parent',handles.axes55);
    pause(2);
    imshow('TXa3.png','Parent',handles.axes55);
    pasoBarraT2 = 1;
    set(handles.cB1TX2,'Enable','Off');
    set(handles.cB2TX2,'Enable','On');
    set(handles.dBTX2,'Enable','On');    
end


% --------------------------------------------------------------------
function cB2TX2_Callback(hObject, eventdata, handles)
global pasoBarraT2;
if(pasoBarraT2==1)
   %transferencia B1 a B2
   imshow('bp1151.png','Parent',handles.axes51);
   pause(2);
   imshow('bp1152.png','Parent',handles.axes51);
   pause(2);  
   imshow('bp1153.png','Parent',handles.axes51);
   pause(2);   
   imshow('bp1154.png','Parent',handles.axes51);
   pause(2);
   imshow('TXa7.png','Parent',handles.axes55);
   pause(2);
   imshow('TXa6.png','Parent',handles.axes55);
   pause(2); 
   imshow('bp1153.png','Parent',handles.axes51);
   pause(2); 
   imshow('bp1152.png','Parent',handles.axes51);   
   pause(2); 
   imshow('bp1151.png','Parent',handles.axes51);   
   pasoBarraT2=2;
    set(handles.cB1TX2,'Enable','On');
    set(handles.cB2TX2,'Enable','Off');
    set(handles.dBTX2,'Enable','On');        
else
    imshow('TXa4.png','Parent',handles.axes55);
    pause(2);
    imshow('TXa5.png','Parent',handles.axes55);
    pause(2);
    imshow('TXa6.png','Parent',handles.axes55);
    pasoBarraT2 = 2;
    set(handles.cB1TX2,'Enable','On');
    set(handles.cB2TX2,'Enable','Off');
    set(handles.dBTX2,'Enable','On');     
end

% --------------------------------------------------------------------
function dBTX2_Callback(hObject, eventdata, handles)
global pasoBarraT2;
if(pasoBarraT2==1)
    imshow('TXa3.png','Parent',handles.axes55);
    pause(2);
    imshow('TXa2.png','Parent',handles.axes55);
    pause(2);
    imshow('TXa1.png','Parent',handles.axes55);
    pasoBarraT2 = 0;
    set(handles.cB1TX2,'Enable','On');
    set(handles.cB2TX2,'Enable','On');
    set(handles.dBTX2,'Enable','Off');      
else
    imshow('TXa6.png','Parent',handles.axes55);
    pause(2);
    imshow('TXa5.png','Parent',handles.axes55);
    pause(2);
    imshow('TXa4.png','Parent',handles.axes55);
    pasoBarraT2 = 0;
    set(handles.cB1TX2,'Enable','On');
    set(handles.cB2TX2,'Enable','On');
    set(handles.dBTX2,'Enable','Off');     
end

% --------------------------------------------------------------------
function cB1TX3_Callback(hObject, eventdata, handles)
global pasoBarraT3;
if(pasoBarraT3==2)
   %transferencia
   imshow('bp1151.png','Parent',handles.axes51);
   pause(2);
   imshow('bp1152.png','Parent',handles.axes51);
   pause(2);  
   imshow('bp1153.png','Parent',handles.axes51);
   pause(2);   
   imshow('bp1154.png','Parent',handles.axes51);
   pause(2);
   imshow('TXa7.png','Parent',handles.axes57);
   pause(2);
   imshow('TXa3.png','Parent',handles.axes57);
   pause(2); 
   imshow('bp1153.png','Parent',handles.axes51);
   pause(2); 
   imshow('bp1152.png','Parent',handles.axes51);   
   pause(2); 
   imshow('bp1151.png','Parent',handles.axes51);   
   pasoBarraT3=1;
    set(handles.cB1TX3,'Enable','Off');
    set(handles.cB2TX3,'Enable','On');
    set(handles.dBTX3,'Enable','On');      
else
    imshow('TXa1.png','Parent',handles.axes57);
    pause(2);
    imshow('TXa2.png','Parent',handles.axes57);
    pause(2);
    imshow('TXa3.png','Parent',handles.axes57);
    pasoBarraT3 = 1;
    set(handles.cB1TX3,'Enable','Off');
    set(handles.cB2TX3,'Enable','On');
    set(handles.dBTX3,'Enable','On');    
end


% --------------------------------------------------------------------
function cB2TX3_Callback(hObject, eventdata, handles)
global pasoBarraT3;
if(pasoBarraT3==1)
   %transferencia B1 a B2
   imshow('bp1151.png','Parent',handles.axes51);
   pause(2);
   imshow('bp1152.png','Parent',handles.axes51);
   pause(2);  
   imshow('bp1153.png','Parent',handles.axes51);
   pause(2);   
   imshow('bp1154.png','Parent',handles.axes51);
   pause(2);
   imshow('TXa7.png','Parent',handles.axes57);
   pause(2);
   imshow('TXa6.png','Parent',handles.axes57);
   pause(2); 
   imshow('bp1153.png','Parent',handles.axes51);
   pause(2); 
   imshow('bp1152.png','Parent',handles.axes51);   
   pause(2); 
   imshow('bp1151.png','Parent',handles.axes51);   
   pasoBarraT3=2;
    set(handles.cB1TX3,'Enable','On');
    set(handles.cB2TX3,'Enable','Off');
    set(handles.dBTX3,'Enable','On');        
else
    imshow('TXa4.png','Parent',handles.axes57);
    pause(2);
    imshow('TXa5.png','Parent',handles.axes57);
    pause(2);
    imshow('TXa6.png','Parent',handles.axes57);
    pasoBarraT3 = 2;
    set(handles.cB1TX3,'Enable','On');
    set(handles.cB2TX3,'Enable','Off');
    set(handles.dBTX3,'Enable','On');     
end

% --------------------------------------------------------------------
function dBTX3_Callback(hObject, eventdata, handles)
global pasoBarraT3;
if(pasoBarraT3==1)
    imshow('TXa3.png','Parent',handles.axes57);
    pause(2);
    imshow('TXa2.png','Parent',handles.axes57);
    pause(2);
    imshow('TXa1.png','Parent',handles.axes57);
    pasoBarraT3 = 0;
    set(handles.cB1TX3,'Enable','On');
    set(handles.cB2TX3,'Enable','On');
    set(handles.dBTX3,'Enable','Off');      
else
    imshow('TXa6.png','Parent',handles.axes57);
    pause(2);
    imshow('TXa5.png','Parent',handles.axes57);
    pause(2);
    imshow('TXa4.png','Parent',handles.axes57);
    pasoBarraT3 = 0;
    set(handles.cB1TX3,'Enable','On');
    set(handles.cB2TX3,'Enable','On');
    set(handles.dBTX3,'Enable','Off');     
end



% --------------------------------------------------------------------
function cB1TX4_Callback(hObject, eventdata, handles)
global pasoBarraT4;
if(pasoBarraT4==2)
   %transferencia
   imshow('bp1151.png','Parent',handles.axes51);
   pause(2);
   imshow('bp1152.png','Parent',handles.axes51);
   pause(2);  
   imshow('bp1153.png','Parent',handles.axes51);
   pause(2);   
   imshow('bp1154.png','Parent',handles.axes51);
   pause(2);
   imshow('TXa7.png','Parent',handles.axes58);
   pause(2);
   imshow('TXa3.png','Parent',handles.axes58);
   pause(2); 
   imshow('bp1153.png','Parent',handles.axes51);
   pause(2); 
   imshow('bp1152.png','Parent',handles.axes51);   
   pause(2); 
   imshow('bp1151.png','Parent',handles.axes51);   
   pasoBarraT4 = 1;
    set(handles.cB1TX4,'Enable','Off');
    set(handles.cB2TX4,'Enable','On');
    set(handles.dBTX4,'Enable','On');      
else
    imshow('TXa1.png','Parent',handles.axes58);
    pause(2);
    imshow('TXa2.png','Parent',handles.axes58);
    pause(2);
    imshow('TXa3.png','Parent',handles.axes58);
    pasoBarraT4 = 1;
    set(handles.cB1TX4,'Enable','Off');
    set(handles.cB2TX4,'Enable','On');
    set(handles.dBTX4,'Enable','On');    
end


% --------------------------------------------------------------------
function cB2TX4_Callback(hObject, eventdata, handles)
global pasoBarraT4;
if(pasoBarraT4==1)
   %transferencia B1 a B2
   imshow('bp1151.png','Parent',handles.axes51);
   pause(2);
   imshow('bp1152.png','Parent',handles.axes51);
   pause(2);  
   imshow('bp1153.png','Parent',handles.axes51);
   pause(2);   
   imshow('bp1154.png','Parent',handles.axes51);
   pause(2);
   imshow('TXa7.png','Parent',handles.axes58);
   pause(2);
   imshow('TXa6.png','Parent',handles.axes58);
   pause(2); 
   imshow('bp1153.png','Parent',handles.axes51);
   pause(2); 
   imshow('bp1152.png','Parent',handles.axes51);   
   pause(2); 
   imshow('bp1151.png','Parent',handles.axes51);   
   pasoBarraT4=2;
    set(handles.cB1TX4,'Enable','On');
    set(handles.cB2TX4,'Enable','Off');
    set(handles.dBTX4,'Enable','On');        
else
    imshow('TXa4.png','Parent',handles.axes58);
    pause(2);
    imshow('TXa5.png','Parent',handles.axes58);
    pause(2);
    imshow('TXa6.png','Parent',handles.axes58);
    pasoBarraT4 = 2;
    set(handles.cB1TX4,'Enable','On');
    set(handles.cB2TX4,'Enable','Off');
    set(handles.dBTX4,'Enable','On');     
end

% --------------------------------------------------------------------
function dBTX4_Callback(hObject, eventdata, handles)
global pasoBarraT4;
if(pasoBarraT4==1)
    imshow('TXa3.png','Parent',handles.axes58);
    pause(2);
    imshow('TXa2.png','Parent',handles.axes58);
    pause(2);
    imshow('TXa1.png','Parent',handles.axes58);
    pasoBarraT4 = 0;
    set(handles.cB1TX4,'Enable','On');
    set(handles.cB2TX4,'Enable','On');
    set(handles.dBTX4,'Enable','Off');      
else
    imshow('TXa6.png','Parent',handles.axes58);
    pause(2);
    imshow('TXa5.png','Parent',handles.axes58);
    pause(2);
    imshow('TXa4.png','Parent',handles.axes58);
    pasoBarraT4 = 0;
    set(handles.cB1TX4,'Enable','On');
    set(handles.cB2TX4,'Enable','On');
    set(handles.dBTX4,'Enable','Off');     
end

% --------------------------------------------------------------------
function cB1TX5_Callback(hObject, eventdata, handles)
global pasoBarraT5;
if(pasoBarraT5==2)
   %transferencia
   imshow('bp1151.png','Parent',handles.axes51);
   pause(2);
   imshow('bp1152.png','Parent',handles.axes51);
   pause(2);  
   imshow('bp1153.png','Parent',handles.axes51);
   pause(2);   
   imshow('bp1154.png','Parent',handles.axes51);
   pause(2);
   imshow('TXa7.png','Parent',handles.axes56);
   pause(2);
   imshow('TXa3.png','Parent',handles.axes56);
   pause(2); 
   imshow('bp1153.png','Parent',handles.axes51);
   pause(2); 
   imshow('bp1152.png','Parent',handles.axes51);   
   pause(2); 
   imshow('bp1151.png','Parent',handles.axes51);   
   pasoBarraT5=1;
    set(handles.cB1TX5,'Enable','Off');
    set(handles.cB2TX5,'Enable','On');
    set(handles.dBTX5,'Enable','On');      
else
    imshow('TXa1.png','Parent',handles.axes56);
    pause(2);
    imshow('TXa2.png','Parent',handles.axes56);
    pause(2);
    imshow('TXa3.png','Parent',handles.axes56);
    pasoBarraT5 = 1;
    set(handles.cB1TX5,'Enable','Off');
    set(handles.cB2TX5,'Enable','On');
    set(handles.dBTX5,'Enable','On');    
end


% --------------------------------------------------------------------
function cB2TX5_Callback(hObject, eventdata, handles)
global pasoBarraT5;
if(pasoBarraT5==1)
   %transferencia B1 a B2
   imshow('bp1151.png','Parent',handles.axes51);
   pause(2);
   imshow('bp1152.png','Parent',handles.axes51);
   pause(2);  
   imshow('bp1153.png','Parent',handles.axes51);
   pause(2);   
   imshow('bp1154.png','Parent',handles.axes51);
   pause(2);
   imshow('TXa7.png','Parent',handles.axes56);
   pause(2);
   imshow('TXa6.png','Parent',handles.axes56);
   pause(2); 
   imshow('bp1153.png','Parent',handles.axes51);
   pause(2); 
   imshow('bp1152.png','Parent',handles.axes51);   
   pause(2); 
   imshow('bp1151.png','Parent',handles.axes51);   
   pasoBarraT5 = 2;
    set(handles.cB1TX5,'Enable','On');
    set(handles.cB2TX5,'Enable','Off');
    set(handles.dBTX5,'Enable','On');        
else
    imshow('TXa4.png','Parent',handles.axes56);
    pause(2);
    imshow('TXa5.png','Parent',handles.axes56);
    pause(2);
    imshow('TXa6.png','Parent',handles.axes56);
    pasoBarraT5 = 2;
    set(handles.cB1TX5,'Enable','On');
    set(handles.cB2TX5,'Enable','Off');
    set(handles.dBTX5,'Enable','On');     
end


% --------------------------------------------------------------------
function dBTX5_Callback(hObject, eventdata, handles)
global pasoBarraT5;
if(pasoBarraT5==1)
    imshow('TXa3.png','Parent',handles.axes56);
    pause(2);
    imshow('TXa2.png','Parent',handles.axes56);
    pause(2);
    imshow('TXa1.png','Parent',handles.axes56);
    pasoBarraT5 = 0;
    set(handles.cB1TX5,'Enable','On');
    set(handles.cB2TX5,'Enable','On');
    set(handles.dBTX5,'Enable','Off');      
else
    imshow('TXa6.png','Parent',handles.axes56);
    pause(2);
    imshow('TXa5.png','Parent',handles.axes56);
    pause(2);
    imshow('TXa4.png','Parent',handles.axes56);
    pasoBarraT5 = 0;
    set(handles.cB1TX5,'Enable','On');
    set(handles.cB2TX5,'Enable','On');
    set(handles.dBTX5,'Enable','Off');     
end
