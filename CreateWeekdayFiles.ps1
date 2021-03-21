# Define start and end dates
$startDate = Get-Date "2015-03-17"
$endDate = Get-Date "2015-12-30"

git add .

$env:GIT_COMMITTER_DATE = "2021-03-21 12:00:00"
$env:GIT_AUTHOR_DATE = "2021-03-21 12:00:00"  # Optional: Set author date too


git commit -m "add and Test..."

git push origin main # Change 'main' to your branch name if different

# Loop through each date
# $currentDate = $startDate
# while ($currentDate -le $endDate) {
#     # Check if the current date is not Saturday (6) or Sunday (0)
#     # Create a new text file with the current date and "r1" title
#     $filename = "file_$($currentDate.ToString('yyyy-MM-dd')).txt"
#     "This is a file for date: $currentDate" | Out-File -FilePath $filename

#     # Set the commit date and add the file to Git (if in a Git repo)
#     git add $filename

#     $env:GIT_COMMITTER_DATE = "$($currentDate.ToString('yyyy-MM-dd')) 12:00:00"
#     $env:GIT_AUTHOR_DATE = "$($currentDate.ToString('yyyy-MM-dd')) 12:00:00"  # Optional: Set author date too
#     git commit -m "r1 - $($currentDate.ToString('yyyy-MM-dd'))"

#     # Remove the text file
#     Remove-Item $filename

#     # Push to GitHub
#     git push origin main # Change 'main' to your branch name if different
#     # Generate a random number of days to increment (0, 1, or 2)
#     $randomIncrement = Get-Random -Minimum 3 -Maximum 5
#     # Move to the next day based on the random increment
#     $currentDate = $currentDate.AddDays($randomIncrement)
# }