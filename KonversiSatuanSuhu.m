function varargout = KonversiSatuanSuhu(varargin)
% KONVERSISATUANSUHU MATLAB code for KonversiSatuanSuhu.fig
%      KONVERSISATUANSUHU, by itself, creates a new KONVERSISATUANSUHU or raises the existing
%      singleton*.
%
%      H = KONVERSISATUANSUHU returns the handle to a new KONVERSISATUANSUHU or the handle to
%      the existing singleton*.
%
%      KONVERSISATUANSUHU('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KONVERSISATUANSUHU.M with the given input arguments.
%
%      KONVERSISATUANSUHU('Property','Value',...) creates a new KONVERSISATUANSUHU or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before KonversiSatuanSuhu_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to KonversiSatuanSuhu_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help KonversiSatuanSuhu

% Last Modified by GUIDE v2.5 30-Sep-2023 19:21:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @KonversiSatuanSuhu_OpeningFcn, ...
                   'gui_OutputFcn',  @KonversiSatuanSuhu_OutputFcn, ...
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


% --- Executes just before KonversiSatuanSuhu is made visible.
function KonversiSatuanSuhu_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to KonversiSatuanSuhu (see VARARGIN)

% Choose default command line output for KonversiSatuanSuhu
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes KonversiSatuanSuhu wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = KonversiSatuanSuhu_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% input
suhu=str2double(get(handles.edit1,'string')); %masukkan suhu


%sintak program pop-up menu 
pilihan=get(handles.popupmenu1,'Value'); switch pilihan
    case 1
        hasil=9/5*suhu+32; % celcius ke fahrenheit
    case 2
        hasil=suhu+273; % celcius ke kelvin
    case 3
        hasil=4/5*suhu; % celcius ke reamur
    case 4 
        hasil=5/4*suhu; % Reamur ke Celcius
    case 5 
        hasil=9/4*suhu+32 % Reamur ke Fahrenheit
    case 6
        hasil=5/4*suhu+273 % Remur ke kelvin
    case 7
        hasil=5/9*(suhu-32); % Fahrenheit ke Celcius
    case 8
        hasil=4/9*(suhu-32); % Fahrenheit ke Reamur
    case 9
        hasil=5/9*(suhu-32)+273 % Fahrenheit ke Kelvin
    case 10
        hasil=suhu-273 % Kelvin ke Celcius
    case 11
        hasil=4/5*(suhu-273); % Kelvin ke Reamur
    case 12
        hasil=9/5*(suhu-273)+32
end;

set(handles.edit2,'string',hasil); % output

function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit1,'string',0); 
set(handles.edit2,'string',0);


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1
gbr=imread('suhu.png'); 
axis off
imshow(gbr);
