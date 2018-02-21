# This requires Chocolatey to be installed and properly added to your system Path

$installed_packages = choco list -l -r --id-only;
$amount_of_installed_packages = $installed_packages.Length;

Write-Output "There are $amount_of_installed_packages packages currently installed"
Write-Output ""

foreach($p in $installed_packages)
{
    $comment = "## Uninstalling $p ##";
    $border = "#"*($comment.Length)
    Write-Output $border
    Write-Output $comment
    Write-Output $border
    Write-Output ""
    choco uninstall $p -y --skip-autounistaller --remove-dependencies --limit-output;
}