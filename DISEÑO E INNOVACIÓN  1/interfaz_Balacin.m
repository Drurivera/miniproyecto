function varargout = interfaz_Balacin(varargin)
% INTERFAZ_BALACIN MATLAB code for interfaz_Balacin.fig
%      INTERFAZ_BALACIN, by itself, creates a new INTERFAZ_BALACIN or raises the existing
%      singleton*.
%
%      H = INTERFAZ_BALACIN returns the handle to a new INTERFAZ_BALACIN or the handle to
%      the existing singleton*.
%
%      INTERFAZ_BALACIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTERFAZ_BALACIN.M with the given input arguments.
%
%      INTERFAZ_BALACIN('Property','Value',...) creates a new INTERFAZ_BALACIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before interfaz_Balacin_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to interfaz_Balacin_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help interfaz_Balacin

% Last Modified by GUIDE v2.5 18-Mar-2022 11:32:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @interfaz_Balacin_OpeningFcn, ...
                   'gui_OutputFcn',  @interfaz_Balacin_OutputFcn, ...
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


% --- Executes just before interfaz_Balacin is made visible.
function interfaz_Balacin_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to interfaz_Balacin (see VARARGIN)

% Choose default command line output for interfaz_Balacin
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes interfaz_Balacin wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = interfaz_Balacin_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in B1.
function B1_Callback(hObject, eventdata, handles)


% hObject    handle to B1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on slider movement.
function Angulo_Callback(hObject, eventdata, handles)
cla(handles.axes1, 'reset');
tmax = str2num(get(handles.tmax,'String'));
for t = 0:0.05:tmax;
ref = randi ([-28,28])
hold on;
title ('SEGUIMIENTO SENAL');
grid on;
xlabel ('tiempo (s)');
ylabel ('angulo');
Ang = get(handles.Ang,'Value');
plot(handle.axes1,t,Ang,'b**');

hold off;
end
% hObject    handle to Angulo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function Angulo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Angulo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function tmax_Callback(hObject, eventdata, handles)
% hObject    handle to tmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tmax as text
%        str2double(get(hObject,'String')) returns contents of tmax as a double


% --- Executes during object creation, after setting all properties.
function tmax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','blue');
end


% --- Executes on button press in inicio.
function inicio_Callback(hObject, eventdata, handles)

hold on;
title ('SEGUIMIENTO SENAL');
grid on;
xlabel ('tiempo (s)');
ylabel ('angulo');
% hObject    handle to inicio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
