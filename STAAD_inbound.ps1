#Requires -Version 5 -Module NetSecurity -RunAsAdministrator
<#
STAAD CRACK ANTI-DETECTION SCRIPT

written by: ultrablitz798 2026-02-17
tested on STAAD.Pro CONNECT Edition V22 Update 9 (22.09.00.115)

based on the work of Daniel Streefkerk
https://gist.github.com/dstreefkerk/800a9e0a22a6242a28b058be423cf0ba
#>

$rules = @()

Class FirewallRule {
    [string]$DisplayName
    [string]$Program
    [string]$Description
    [string]$Action = 'Block'
    [string]$LocalAddress = 'Any'
    [string]$Direction = 'Inbound'
    [string]$RemoteAddress = 'Any'
}

# From Common Files\Bentley Shared\CONNECTION Client\
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - Bentley.AppInstall.App.exe';Program='%ProgramFiles%\Common Files\Bentley Shared\CONNECTION Client\Bentley.AppInstall.App.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - Bentley.Connect.Client.exe';Program='%ProgramFiles%\Common Files\Bentley Shared\CONNECTION Client\Bentley.Connect.Client.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - LogCollector.exe';Program='%ProgramFiles%\Common Files\Bentley Shared\CONNECTION Client\LogCollector.exe'}

# From Common Files\Bentley Shared\CONNECTION Client\LicService
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - Bentley.Licensing.Service.exe';Program='%ProgramFiles%\Common Files\Bentley Shared\CONNECTION Client\LicService\Bentley.Licensing.Service.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - Bentley.Licensing.LicenseTool.exe';Program='%ProgramFiles%\Common Files\Bentley Shared\CONNECTION Client\LicService\Bentley.Licensing.LicenseTool.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - Bentley.Licensing.HealthCheck.exe';Program='%ProgramFiles%\Common Files\Bentley Shared\CONNECTION Client\LicService\Bentley.Licensing.HealthCheck.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - Bentley.Licensing.FeatureLevelSelector.exe';Program='%ProgramFiles%\Common Files\Bentley Shared\CONNECTION Client\LicService\Bentley.Licensing.FeatureLevelSelector.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - Bentley.Licensing.ActivationWizard.exe';Program='%ProgramFiles%\Common Files\Bentley Shared\CONNECTION Client\LicService\Bentley.Licensing.ActivationWizard.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - Bentley.Licensing.IMSLoginClient.exe';Program='%ProgramFiles%\Common Files\Bentley Shared\CONNECTION Client\LicService\Bentley.Licensing.IMSLoginClient.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - Bentley.Licensing.ServerModeSetup.exe';Program='%ProgramFiles%\Common Files\Bentley Shared\CONNECTION Client\LicService\Bentley.Licensing.ServerModeSetup.exe'}

# From Common Files\Bentley Shared\iTwin Services Add-in V2\
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - Bentley.iTwinServicesAddIn.ConnectClientCommunication.App.exe';Program='%ProgramFiles%\Common Files\Bentley Shared\iTwin Services Add-in V2\ConnectClientCommunication\Bentley.iTwinServicesAddIn.ConnectClientCommunication.App.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - Bentley.iTwinServicesAddIn.LocalServer.exe';Program='%ProgramFiles%\Common Files\Bentley Shared\iTwin Services Add-in V2\LocalServer\Bentley.iTwinServicesAddIn.LocalServer.exe'}

# From Bentley\DgnPreviewHandler\
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - DgnPreviewHandler.exe';Program='%ProgramFiles%\Bentley\DgnPreviewHandler\DgnPreviewHandler.exe'}

# From Bentley\Engineering\iTwin Analytical Synchronizer CONNECT Edition\
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - iTwinAnalyticalSynchronizer.exe';Program='%ProgramFiles%\Bentley\Engineering\iTwin Analytical Synchronizer CONNECT Edition\Synchronizer\iTwinAnalyticalSynchronizer.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - BeBlobDaemon.exe';Program='%ProgramFiles%\Bentley\Engineering\iTwin Analytical Synchronizer CONNECT Edition\Synchronizer\IModelJsInterop\node_modules\@bentley\imodeljs-native\imodeljs-win32-x64\BeBlobDaemon.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - Bentley.IModelJsInterop.Backend.exe';Program='%ProgramFiles%\Bentley\Engineering\iTwin Analytical Synchronizer CONNECT Edition\Synchronizer\IModelJsInterop\Bentley.IModelJsInterop.Backend.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - DgnNavigatorAx.exe';Program='%ProgramFiles%\Bentley\Engineering\iTwin Analytical Synchronizer CONNECT Edition\Synchronizer\DgnNavigatorAx.exe'}

# From Bentley\Engineering\RCDC CONNECT Edition\
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - RCDC.exe';Program='%ProgramFiles%\Bentley\Engineering\RCDC CONNECT Edition\RCDC.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - ColumnDesignTool.exe';Program='%ProgramFiles%\Bentley\Engineering\RCDC CONNECT Edition\ColumnDesignTool.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - PileCapDesignTool.exe';Program='%ProgramFiles%\Bentley\Engineering\RCDC CONNECT Edition\PileCapDesignTool.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - WaterTankDesignTool.exe';Program='%ProgramFiles%\Bentley\Engineering\RCDC CONNECT Edition\WaterTankDesignTool.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - BeamDesignTool.exe';Program='%ProgramFiles%\Bentley\Engineering\RCDC CONNECT Edition\BeamDesignTool.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - FootingDesignTool.exe';Program='%ProgramFiles%\Bentley\Engineering\RCDC CONNECT Edition\FootingDesignTool.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - SlabDesignTool.exe';Program='%ProgramFiles%\Bentley\Engineering\RCDC CONNECT Edition\SlabDesignTool.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - Bentley.OidcAuthentication.Sso.exe';Program='%ProgramFiles%\Bentley\Engineering\RCDC CONNECT Edition\Bentley.OidcAuthentication.Sso.exe'}

# From Bentley\Engineering\SPC\
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - Bentley.Structural.PropertyCatalog.ManagementStudio.exe';Program='%ProgramFiles%\Bentley\Engineering\SPC\Tools\Bentley.Structural.PropertyCatalog.ManagementStudio.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - Bentley.Structural.PropertyCatalog.Server.exe';Program='%ProgramFiles%\Bentley\Engineering\SPC\Bentley.Structural.PropertyCatalog.Server.exe'}

# From Bentley\Engineering\STAAD.Pro CONNECT Edition\
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - Cis2Link.exe';Program='%ProgramFiles%\Bentley\Engineering\STAAD.Pro CONNECT Edition\STAAD\Cis2Link.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - Bentley.Staad.exe';Program='%ProgramFiles%\Bentley\Engineering\STAAD.Pro CONNECT Edition\STAAD\Bentley.Staad.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - Calculator.exe';Program='%ProgramFiles%\Bentley\Engineering\STAAD.Pro CONNECT Edition\STAAD\Calculator.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - Bentley.Staad.AutoLoadCombRuleManager.exe';Program='%ProgramFiles%\Bentley\Engineering\STAAD.Pro CONNECT Edition\STAAD\Bentley.Staad.AutoLoadCombRuleManager.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - Section.exe';Program='%ProgramFiles%\Bentley\Engineering\STAAD.Pro CONNECT Edition\STAAD\SectionWizard\Section.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - SectionWizard.exe';Program='%ProgramFiles%\Bentley\Engineering\STAAD.Pro CONNECT Edition\STAAD\SectionWizard\SectionWizard.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - Bentley.Staad.ScriptEditor.exe';Program='%ProgramFiles%\Bentley\Engineering\STAAD.Pro CONNECT Edition\STAAD\Bentley.Staad.ScriptEditor.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - FreeSketch.exe';Program='%ProgramFiles%\Bentley\Engineering\STAAD.Pro CONNECT Edition\STAAD\SectionWizard\FreeSketch.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - EqSection.exe';Program='%ProgramFiles%\Bentley\Engineering\STAAD.Pro CONNECT Edition\STAAD\SectionWizard\EqSection.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - Bentley.Staad.UnitConverter.exe';Program='%ProgramFiles%\Bentley\Engineering\STAAD.Pro CONNECT Edition\STAAD\Bentley.Staad.UnitConverter.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - Bentley.Staad.Editor.exe';Program='%ProgramFiles%\Bentley\Engineering\STAAD.Pro CONNECT Edition\STAAD\Bentley.Staad.Editor.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - SCalc.exe';Program='%ProgramFiles%\Bentley\Engineering\STAAD.Pro CONNECT Edition\STAAD\SectionWizard\SCalc.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - UCalc.exe';Program='%ProgramFiles%\Bentley\Engineering\STAAD.Pro CONNECT Edition\STAAD\SectionWizard\UCalc.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - SectionDBManager.exe';Program='%ProgramFiles%\Bentley\Engineering\STAAD.Pro CONNECT Edition\STAAD\SectionDBManager.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - AIJRoute2Tool.exe';Program='%ProgramFiles%\Bentley\Engineering\STAAD.Pro CONNECT Edition\STAAD\PlugIns\AIJRoute2Tool\AIJRoute2Tool.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - ConnectionTagLink.exe';Program='%ProgramFiles%\Bentley\Engineering\STAAD.Pro CONNECT Edition\STAAD\PlugIns\ConnectionTagLink\ConnectionTagLink.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - ExportToDB.exe';Program='%ProgramFiles%\Bentley\Engineering\STAAD.Pro CONNECT Edition\STAAD\ExportToDB\ExportToDB.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - StrucLink.exe';Program='%ProgramFiles%\Bentley\Engineering\STAAD.Pro CONNECT Edition\STAAD\PlugIns\StrucLink\StrucLink.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - PipeLink.exe';Program='%ProgramFiles%\Bentley\Engineering\STAAD.Pro CONNECT Edition\STAAD\PlugIns\PipeLink\PipeLink.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - Bentley.Staad.Licensing.Configuration.exe';Program='%ProgramFiles%\Bentley\Engineering\STAAD.Pro CONNECT Edition\STAAD\Bentley.Staad.Licensing.Configuration.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - Bentley.SXP.StdpConverter.exe';Program='%ProgramFiles%\Bentley\Engineering\STAAD.Pro CONNECT Edition\STAAD\SPPM\Program\Bentley.SXP.StdpConverter.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - StWizard.exe';Program='%ProgramFiles%\Bentley\Engineering\STAAD.Pro CONNECT Edition\STAAD\StWizard.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - SXP.exe';Program='%ProgramFiles%\Bentley\Engineering\STAAD.Pro CONNECT Edition\STAAD\SPPM\Program\SXP.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - SProStaad.exe';Program='%ProgramFiles%\Bentley\Engineering\STAAD.Pro CONNECT Edition\STAAD\SProStaad\SProStaad.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - Bentley.SXP.StaadImportExport.exe';Program='%ProgramFiles%\Bentley\Engineering\STAAD.Pro CONNECT Edition\STAAD\SPPM\Program\Bentley.SXP.StaadImportExport.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - dconvert.exe';Program='%ProgramFiles%\Bentley\Engineering\STAAD.Pro CONNECT Edition\STAAD\SectionWizard\dconvert.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - Bentley.OidcAuthentication.Sso.exe';Program='%ProgramFiles%\Bentley\Engineering\STAAD.Pro CONNECT Edition\STAAD\Bentley.OidcAuthentication.Sso.exe'}

# From Program Files (x86)\Bentley\Engineering
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - StaadFoundation.exe';Program='%ProgramFiles(x86)%\Bentley\Engineering\STAAD Foundation Advanced\StaadFoundation.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - SproViewSFDN.exe';Program='%ProgramFiles(x86)%\Bentley\Engineering\STAAD Foundation Advanced\SProEngine\SproViewSFDN.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - SProStaad.exe';Program='%ProgramFiles(x86)%\Bentley\Engineering\STAAD Foundation Advanced\SProEngine\SProStaad.exe'}
$rules += New-Object FirewallRule -Property @{DisplayName='Block STAAD - STAAD_Building_Planner.exe';Program='%ProgramFiles(x86)%\Bentley\Engineering\STAAD Building Planner\STAAD_Building_Planner.exe'}


# Create all of the rules using New-NetFirewallRule
foreach ($rule in $rules) {
    New-NetFirewallRule -DisplayName $rule.DisplayName -Direction $rule.Direction -Description $rule.Description -Action $rule.Action `
                        -LocalAddress $rule.LocalAddress -RemoteAddress $rule.RemoteAddress -Program $rule.Program
}