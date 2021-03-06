type
  TGradientTabDrawer=class(TObject)
  private
   FCanvas             :TCanvas;
   FTabTop             :Integer;
   FPath               :TGPGraphicsPath;
   FGraphics           :TGPGraphics;
   FOutlinePen         :TGPPen;
   FActiveGradientBrush:TGPLinearGradientBrush;
   FInActiveGradientBrush:TGPLinearGradientBrush;
   FTabBottom          :Integer;
   FTotalWidth         :Integer;
   FLeftPos            :Integer;
   FImageList          :TCustomImageList;
   FLastHandle         :HDC;
   FDrawingStyle       :TTabDrawingStyle;
   FTabColors          :TTabColors;
  public
   constructor Create(const ACanvas: TCanvas);
   class destructor Destroy;
   procedure DrawActiveTab(const TabLeft: Integer; const TabWidth: Integer; const Caption: WideString; const ImageIndex: Integer; const OverlayIndex: Integer);
   procedure DrawInactiveTab(const TabLeft: Integer; const TabWidth: Integer; const Caption: WideString; const ImageIndex: Integer; const OverlayIndex: Integer);
   function GetTextWidth(const Caption: WideString): Integer;
   procedure SetDrawingOffsets(const Left: Integer; const Bottom: Integer; const Right: Integer);
   procedure ResetColors;
   constructor Create;
   procedure Free;
   procedure DisposeOf;
   class function InitInstance(Instance: Pointer): TObject;
   procedure CleanupInstance;
   function ClassType: TClass;
   class function ClassName: string;
   class function ClassNameIs(const Name: string): Boolean;
   class function ClassParent: TClass;
   class function ClassInfo: Pointer;
   class function InstanceSize: Integer;
   class function InheritsFrom(AClass: TClass): Boolean;
   class function MethodAddress(const Name: ShortString): Pointer;
   class function MethodAddress(const Name: string): Pointer;
   class function MethodName(Address: Pointer): string;
   class function QualifiedClassName: string;
   function FieldAddress(const Name: ShortString): Pointer;
   function FieldAddress(const Name: string): Pointer;
   function GetInterface(const IID: TGUID; out Obj): Boolean;
   class function GetInterfaceEntry(const IID: TGUID): PInterfaceEntry;
   class function GetInterfaceTable: PInterfaceTable;
   class function UnitName: string;
   class function UnitScope: string;
   function Equals(Obj: TObject): Boolean;
   function GetHashCode: Integer;
   function ToString: string;
   function SafeCallException(ExceptObject: TObject; ExceptAddr: Pointer): HRESULT;
   procedure AfterConstruction;
   procedure BeforeDestruction;
   procedure Dispatch(var Message);
   procedure DefaultHandler(var Message);
   class function NewInstance: TObject;
   procedure FreeInstance;
   class destructor Destroy;
   property DrawingStyle: TTabDrawingStyle;
   property ImageList: TCustomImageList;
   property TabColors: TTabColors;
   property TabTop: Integer;
   property TabBottom: Integer;
  end;
