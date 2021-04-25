function varargout = Mining_123190133(varargin)
% MINING_123190133 MATLAB code for Mining_123190133.fig
%      MINING_123190133, by itself, creates a new MINING_123190133 or raises the existing
%      singleton*.
%
%      H = MINING_123190133 returns the handle to a new MINING_123190133 or the handle to
%      the existing singleton*.
%
%      MINING_123190133('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MINING_123190133.M with the given input arguments.
%
%      MINING_123190133('Property','Value',...) creates a new MINING_123190133 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Mining_123190133_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Mining_123190133_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Mining_123190133

% Last Modified by GUIDE v2.5 24-Apr-2021 13:41:07

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Mining_123190133_OpeningFcn, ...
                   'gui_OutputFcn',  @Mining_123190133_OutputFcn, ...
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


% --- Executes just before Mining_123190133 is made visible.
function Mining_123190133_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Mining_123190133 (see VARARGIN)

% Choose default command line output for Mining_123190133
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Mining_123190133 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Mining_123190133_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
data = readtable('Mining_123190133.csv');
data1 = table2array(data);
set(handles.uitable1, 'data', data1);



% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uitable1,'data','');


function age_Callback(hObject, eventdata, handles)
% hObject    handle to age (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of age as text
%        str2double(get(hObject,'String')) returns contents of age as a double


% --- Executes during object creation, after setting all properties.
function age_CreateFcn(hObject, eventdata, handles)
% hObject    handle to age (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function op_year_Callback(hObject, eventdata, handles)
% hObject    handle to op_year (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of op_year as text
%        str2double(get(hObject,'String')) returns contents of op_year as a double


% --- Executes during object creation, after setting all properties.
function op_year_CreateFcn(hObject, eventdata, handles)
% hObject    handle to op_year (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function axil_nodes_Callback(hObject, eventdata, handles)
% hObject    handle to axil_nodes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of axil_nodes as text
%        str2double(get(hObject,'String')) returns contents of axil_nodes as a double


% --- Executes during object creation, after setting all properties.
function axil_nodes_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axil_nodes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function klasifikasi_Callback(hObject, eventdata, handles)
% hObject    handle to klasifikasi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of klasifikasi as text
%        str2double(get(hObject,'String')) returns contents of klasifikasi as a double


% --- Executes during object creation, after setting all properties.
function klasifikasi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to klasifikasi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
age = str2double(get(handles.age,'String'));
op_year = str2double(get(handles.op_year,'String'));
axil_nodes = str2double(get(handles.axil_nodes,'String'));
klasifikasi = str2double(get(handles.klasifikasi,'String'));

sample = [age op_year axil_nodes];

opts = detectImportOptions('Mining_123190133.csv');
opts.SelectedVariableNames = (1:3);
data2 = readtable('Mining_123190133.csv',opts);
training = table2array(data2);

opts = detectImportOptions('Mining_123190133.csv');
opts.SelectedVariableNames = (4);
data3 = readtable('Mining_123190133.csv',opts);
group = table2array(data3);

class = fitcknn(training , group , 'NumNeighbors', klasifikasi);

survivalstatus = predict(class, sample);

set(handles.surv_status, 'String', survivalstatus);

if survivalstatus == 1
    set(handles.keterangan, 'String', 'the patient survived 5 years or longer');
elseif survivalstatus == 2
    set(handles.keterangan, 'String', 'the patient died within 5 year');
end;

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.age,'string','');
set(handles.op_year,'string','');
set(handles.axil_nodes,'string','');
set(handles.klasifikasi,'string','');
set(handles.surv_status,'string','');
set(handles.keterangan,'string','');
