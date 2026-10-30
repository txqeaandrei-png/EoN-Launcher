.class public Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;
.super Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;


# instance fields
.field private final cancelButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

.field public optionalText:Landroid/widget/EditText;

.field private final reasonSpinner:Landroid/widget/Spinner;

.field private reasonSpinnerAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final submitButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

.field private final titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field public viewModel:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;


# direct methods
.method public static synthetic $r8$lambda$LPfW_C6LG23NI8evcsj9QrmujGc(Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->lambda$onStart$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XgV7llOOeAQCI-2w3TPeoNmcLbk(Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->lambda$onStart$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;)V
    .locals 5

    .line 37
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;-><init>(Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;)V

    .line 28
    sget v0, Lcom/microsoft/xboxtcui/R$id;->report_user_cancel:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->cancelButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    .line 29
    sget v1, Lcom/microsoft/xboxtcui/R$id;->report_user_reason:I

    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->reasonSpinner:Landroid/widget/Spinner;

    .line 30
    sget v2, Lcom/microsoft/xboxtcui/R$id;->report_user_submit:I

    invoke-virtual {p0, v2}, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    iput-object v2, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->submitButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    .line 31
    sget v3, Lcom/microsoft/xboxtcui/R$id;->report_user_title:I

    invoke-virtual {p0, v3}, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object v3, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 32
    sget v4, Lcom/microsoft/xboxtcui/R$id;->report_user_text:I

    invoke-virtual {p0, v4}, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->optionalText:Landroid/widget/EditText;

    .line 38
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;

    .line 39
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 40
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 41
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->optionalText:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 42
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 43
    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onStart$0(Landroid/view/View;)V
    .locals 0

    .line 63
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->onBackButtonPressed()Z

    return-void
.end method

.method private synthetic lambda$onStart$1(Landroid/view/View;)V
    .locals 1

    .line 65
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->getReason()Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Unknown"

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->getReason()Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCReportUser;->trackReportDialogOK(Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->optionalText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->submitReport(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 4

    .line 47
    invoke-super {p0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onStart()V

    .line 48
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/microsoft/xboxtcui/R$layout;->report_spinner_item:I

    iget-object v3, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;

    invoke-virtual {v3}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->getReasonTitles()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 49
    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->reasonSpinnerAdapter:Landroid/widget/ArrayAdapter;

    .line 50
    sget v1, Lcom/microsoft/xboxtcui/R$layout;->spinner_item_dropdown:I

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 51
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->reasonSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->reasonSpinnerAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 53
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->reasonSpinner:Landroid/widget/Spinner;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;

    invoke-virtual {v2}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->getPreferredColor()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->reasonSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter$1;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter$1;-><init>(Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 63
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->cancelButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    new-instance v1, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->submitButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    new-instance v1, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateViewOverride()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    if-eqz v0, :cond_0

    .line 73
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->submitButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    if-eqz v0, :cond_1

    .line 77
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->validReasonSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setEnabled(Z)V

    :cond_1
    return-void
.end method
