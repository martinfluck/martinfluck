
###################################################################################

# Define computer names array within foreach scope
$ComputerNames = "server01", "server02", "server03"

$results = @()

foreach ($ComputerName in $ComputerNames) {

  # Add error handling for Get-ADComputer 
  $computer = Get-ADComputer -Identity $ComputerName -Properties PasswordLastSet -ErrorAction SilentlyContinue

  if($computer) {

    # Check for null before accessing properties
    if($computer.PasswordLastSet){

      # Output results in structured format
      $result = [pscustomobject]@{
        ComputerName = $ComputerName
        PasswordLastSet = $computer.PasswordLastSet
      }

      $results += $result

    } else {
      Write-Warning "No password last set for $ComputerName"
    }

  } else {
    Write-Warning "Computer $ComputerName not found"
  }

}

# Export results to CSV
$results | Export-Csv -Path results.csv -NoTypeInformation

