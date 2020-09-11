﻿$modules = @("Pester", "PSFramework", "PSModuleDevelopment", "PSScriptAnalyzer", 'ResolveString', 'Principal', 'ADMF.Core')

foreach ($module in $modules) {
    Write-Host "Installing $module" -ForegroundColor Cyan
    Install-Module $module -Force -SkipPublisherCheck
    Import-Module $module -Force -PassThru
}