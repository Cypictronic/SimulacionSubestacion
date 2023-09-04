function varargout = nivelCortoC(varargin)
% NIVELCORTOC MATLAB code for nivelCortoC.fig
%      NIVELCORTOC, by itself, creates a new NIVELCORTOC or raises the existing
%      singleton*.
%
%      H = NIVELCORTOC returns the handle to a new NIVELCORTOC or the handle to
%      the existing singleton*.
%
%      NIVELCORTOC('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NIVELCORTOC.M with the given input arguments.
%
%      NIVELCORTOC('Property','Value',...) creates a new NIVELCORTOC or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before nivelCortoC_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to nivelCortoC_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help nivelCortoC

% Last Modified by GUIDE v2.5 27-Feb-2018 16:46:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @nivelCortoC_OpeningFcn, ...
                   'gui_OutputFcn',  @nivelCortoC_OutputFcn, ...
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


% --- Executes just before nivelCortoC is made visible.
function nivelCortoC_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to nivelCortoC (see VARARGIN)
movegui(gcf,'center')
global ST1 ST2 ST3 ST4 ST5 ST6;
global ZT1 ZT2 ZT3 ZT4 ZT5 ZT6;
ST1=1;
ST2=1;
ST3=1;
ST4=1;
ST5=1;
ST6=1;
ZT1=1;
ZT2=1;
ZT3=1;
ZT4=1;
ZT5=1;
ZT6=1;
% Choose default command line output for nivelCortoC
handles.output = hObject;
% valor = {'30','36'};
% set(handles.popST1,'String',valor);
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes nivelCortoC wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = nivelCortoC_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function editMVAcc_Callback(hObject, eventdata, handles)
% hObject    handle to editMVAcc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editMVAcc as text
%        str2double(get(hObject,'String')) returns contents of editMVAcc as a double


% --- Executes during object creation, after setting all properties.
function editMVAcc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editMVAcc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editXR_Callback(hObject, eventdata, handles)
% hObject    handle to editXR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editXR as text
%        str2double(get(hObject,'String')) returns contents of editXR as a double


% --- Executes during object creation, after setting all properties.
function editXR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editXR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popZT1.
function popZT1_Callback(hObject, eventdata, handles)
global ZT1;
index = get(handles.popZT1,'Value'); 
switch(index)
    case 1
        ZT1 = 1;
    case 2
        ZT1 = 12.49;
    case 3
        ZT1 = 12.17;
    case 4
        ZT1 = 11.62;
end


% --- Executes during object creation, after setting all properties.
function popZT1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popZT1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in popST1.
function popST1_Callback(hObject, eventdata, handles)
global ST1;
index = get(handles.popST1,'Value'); 
switch(index)
    case 1
        ST1 = 1;    
    case 2
        ST1 = 30;
    case 3
        ST1 = 36;
end


% --- Executes during object creation, after setting all properties.
function popST1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popST1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popZT2.
function popZT2_Callback(hObject, eventdata, handles)
global ZT2;
index = get(handles.popZT2,'Value'); 
switch(index)
    case 1
        ZT2 = 1;    
    case 2
        ZT2 = 12.55;
    case 3
        ZT2 = 12.11;
    case 4
        ZT2 = 11.51;
end


% --- Executes during object creation, after setting all properties.
function popZT2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popZT2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popST2.
function popST2_Callback(hObject, eventdata, handles)
global ST2;
index = get(handles.popST2,'Value'); 
switch(index)
    case 1
        ST2 = 1;    
    case 2
        ST2 = 30;
    case 3
        ST2 = 36;
end


% --- Executes during object creation, after setting all properties.
function popST2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popST2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popZT3.
function popZT3_Callback(hObject, eventdata, handles)
global ZT3;
index = get(handles.popZT3,'Value'); 
switch(index)
    case 1
        ZT3 = 1;    
    case 2
        ZT3 = 11.36;
    case 3
        ZT3 = 11.19;
    case 4
        ZT3 = 10.75;
end


% --- Executes during object creation, after setting all properties.
function popZT3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popZT3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popST3.
function popST3_Callback(hObject, eventdata, handles)
global ST3;
index = get(handles.popST3,'Value'); 
switch(index)
    case 1
        ST3 = 1;    
    case 2
        ST3 = 30;
    case 3
        ST3 = 36;
end


% --- Executes during object creation, after setting all properties.
function popST3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popST3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popZT4.
function popZT4_Callback(hObject, eventdata, handles)
global ZT4;
index = get(handles.popZT4,'Value'); 
switch(index)
    case 1
        ZT4 = 1;    
    case 2
        ZT4 = 9.8;
end


% --- Executes during object creation, after setting all properties.
function popZT4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popZT4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popST4.
function popST4_Callback(hObject, eventdata, handles)
global ST4;
index = get(handles.popST4,'Value'); 
switch(index)
    case 1
        ST4 = 1;    
    case 2
        ST4 = 24;
    case 3
        ST4 = 30;        
end


% --- Executes during object creation, after setting all properties.
function popST4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popST4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popZT5.
function popZT5_Callback(hObject, eventdata, handles)
global ZT5;
index = get(handles.popZT5,'Value'); 
switch(index)
    case 1
        ZT5 = 1;    
    case 2
        ZT5 = 11.88;
    case 3
        ZT5 = 11.47;
    case 4
        ZT5 = 10.56;
end


% --- Executes during object creation, after setting all properties.
function popZT5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popZT5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popST5.
function popST5_Callback(hObject, eventdata, handles)
global ST5;
index = get(handles.popST5,'Value'); 
switch(index)
    case 1
        ST5 = 1;    
    case 2
        ST5 = 30;
    case 3
        ST5 = 36;
end


% --- Executes during object creation, after setting all properties.
function popST5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popST5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popZT6.
function popZT6_Callback(hObject, eventdata, handles)
global ZT6;
index = get(handles.popZT6,'Value'); 
switch(index)
    case 1
        ZT6 = 1;    
    case 2
        ZT6 = 11.56;
    case 3
        ZT6 = 11.13;
    case 4
        ZT6 = 10.18;
end


% --- Executes during object creation, after setting all properties.
function popZT6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popZT6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popST6.
function popST6_Callback(hObject, eventdata, handles)
global ST6;
index = get(handles.popST6,'Value'); 
switch(index)
    case 1
        ST6 = 1;    
    case 2
        ST6 = 30;
    case 3
        ST6 = 36;
end


% --- Executes during object creation, after setting all properties.
function popST6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popST6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnGuardar.
function btnGuardar_Callback(hObject, eventdata, handles)
global hayDatos;
global Scc XR;
global ST1 ST2 ST3 ST4 ST5 ST6;
global ZT1 ZT2 ZT3 ZT4 ZT5 ZT6;
Scc = str2double(get(handles.editMVAcc,'String'));
XR =  str2double(get(handles.editXR,'String'));
if(Scc>0 && XR>0 && ST1>1 && ST2>1 && ST3>1 && ST4>1 && ST5>1 && ST6>1 && ZT1>1 && ZT2>1 && ZT3>1 && ZT4>1 && ZT5>1 && ZT6>1)
    msgbox('Sus datos fueron almacenados exitosamente','Guardar','help');
    hayDatos=1;
    pause(1);
    close;
    close;
else
    msgbox('Por favor no puede haber espacios en blanco','Guardar','error');
end
