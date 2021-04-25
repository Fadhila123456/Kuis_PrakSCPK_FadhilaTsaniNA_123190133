function varargout = Kuis_no2_FadhilaTsaniNA_123190133(varargin)
% KUIS_NO2_FADHILATSANINA_123190133 MATLAB code for Kuis_no2_FadhilaTsaniNA_123190133.fig
%      KUIS_NO2_FADHILATSANINA_123190133, by itself, creates a new KUIS_NO2_FADHILATSANINA_123190133 or raises the existing
%      singleton*.
%
%      H = KUIS_NO2_FADHILATSANINA_123190133 returns the handle to a new KUIS_NO2_FADHILATSANINA_123190133 or the handle to
%      the existing singleton*.
%
%      KUIS_NO2_FADHILATSANINA_123190133('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KUIS_NO2_FADHILATSANINA_123190133.M with the given input arguments.
%
%      KUIS_NO2_FADHILATSANINA_123190133('Property','Value',...) creates a new KUIS_NO2_FADHILATSANINA_123190133 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Kuis_no2_FadhilaTsaniNA_123190133_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Kuis_no2_FadhilaTsaniNA_123190133_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Kuis_no2_FadhilaTsaniNA_123190133

% Last Modified by GUIDE v2.5 23-Apr-2021 20:22:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Kuis_no2_FadhilaTsaniNA_123190133_OpeningFcn, ...
                   'gui_OutputFcn',  @Kuis_no2_FadhilaTsaniNA_123190133_OutputFcn, ...
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


% --- Executes just before Kuis_no2_FadhilaTsaniNA_123190133 is made visible.
function Kuis_no2_FadhilaTsaniNA_123190133_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Kuis_no2_FadhilaTsaniNA_123190133 (see VARARGIN)

% Choose default command line output for Kuis_no2_FadhilaTsaniNA_123190133
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Kuis_no2_FadhilaTsaniNA_123190133 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Kuis_no2_FadhilaTsaniNA_123190133_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
lihathasil = readfis('Kuis_no2_FadhilaTsaniNA_123190133');
out = evalfis([handles.style handles.MF],lihathasil);
set(handles.nilai,'string',out);
if out<=100 && out>=60
    set(handles.hasil,'string','Tinggi');
elseif out<=70 && out>=50
    set(handles.hasil,'string','Sedang');
else
    set(handles.hasil,'string','Rendah');
end

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.lbl_style,'string','');
set(handles.lbl_mf,'string','');
set(handles.nilai,'string','');
set(handles.hasil,'string','');


function lbl_style_Callback(hObject, eventdata, handles)
% hObject    handle to lbl_style (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
style = str2double(get(hObject,'string'));
handles.style = style;
guidata(hObject, handles);

% Hints: get(hObject,'String') returns contents of lbl_style as text
%        str2double(get(hObject,'String')) returns contents of lbl_style as a double


% --- Executes during object creation, after setting all properties.
function lbl_style_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lbl_style (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function lbl_mf_Callback(hObject, eventdata, handles)
% hObject    handle to lbl_mf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
MF = str2double(get(hObject,'string'));
handles.MF = MF;
guidata(hObject, handles);
% Hints: get(hObject,'String') returns contents of lbl_mf as text
%        str2double(get(hObject,'String')) returns contents of lbl_mf as a double


% --- Executes during object creation, after setting all properties.
function lbl_mf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lbl_mf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
