function Diff-CSV {
	 <#
    .SYNOPSIS
        PowerShell wrapper for diff-table.exe a tool to diff csv file
    #>
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory,Position=0)]
        $CSV1,
        [Parameter(Mandatory,Position=1)]
        $CSV2,
        [Parameter(Mandatory,Position=2)]
        $Key
    )

    $exePath = "C:\Scripts\tools\diffTable\diff-table.exe"
    if (!(Test-Path $exePath)){
        $message = @'     
Generates row/column wise diffs conmparing two .csv files
This function requires diff-table.exe tool.
https://github.com/chop-dbhi/diff-table
Instructions:
- Download https://github.com/chop-dbhi/diff-table/releases/download/0.4.0/diff-table-windows-amd64.zip
- extract and update location to exePath in line 35
'@
        Write-Warning $message
        exit
    }
    $parameters = New-Object System.Collections.ArrayList
    $null = $parameters.Add("-csv1")
    $null = $parameters.Add($(Resolve-Path $CSV1).Path)
    $null = $parameters.Add("-csv2")
    $null = $parameters.Add($(Resolve-Path $CSV2).Path)
    $null = $parameters.Add("-csv1.sort")
    $null = $parameters.Add("-csv2.sort")
    $null = $parameters.Add("-key")
    $null = $parameters.Add($Key)
    $null = $parameters.Add("-events")
    & $exePath $parameters | ConvertFrom-Json 
}

#$csvPath = "C:\Scripts\tools\diffTable"
#$res = Diff-CSV $csvPath\test.csv $csvPath\test2.csv name

