# Regenerates icon.png for the PatrolCancel mod (256x256).
# Design: dark rounded tile + red no-entry ring/slash (cancel) + white right-arrow (move).
Add-Type -AssemblyName System.Drawing

$root = Split-Path -Parent $PSScriptRoot
$out = Join-Path $root "icon.png"

$size = 256
$bmp = New-Object System.Drawing.Bitmap $size, $size
$g = [System.Drawing.Graphics]::FromImage($bmp)
$g.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::AntiAlias
$g.Clear([System.Drawing.Color]::FromArgb(0, 0, 0, 0))

# dark rounded-rect tile
$path = New-Object System.Drawing.Drawing2D.GraphicsPath
$r = 48
$rect = New-Object System.Drawing.Rectangle 8, 8, 240, 240
$d = $r * 2
$path.AddArc($rect.X, $rect.Y, $d, $d, 180, 90)
$path.AddArc($rect.X + $rect.Width - $d, $rect.Y, $d, $d, 270, 90)
$path.AddArc($rect.X + $rect.Width - $d, $rect.Y + $rect.Height - $d, $d, $d, 0, 90)
$path.AddArc($rect.X, $rect.Y + $rect.Height - $d, $d, $d, 90, 90)
$path.CloseFigure()
$bg = New-Object System.Drawing.SolidBrush ([System.Drawing.Color]::FromArgb(255, 26, 28, 35))
$g.FillPath($bg, $path)

# red no-entry ring + slash (cancel patrol)
$pen = New-Object System.Drawing.Pen ([System.Drawing.Color]::FromArgb(255, 232, 84, 84)), 16
$g.DrawEllipse($pen, 42, 42, 172, 172)
$g.DrawLine($pen, 84, 84, 172, 172)

# white right-arrow (move)
$wPen = New-Object System.Drawing.Pen ([System.Drawing.Color]::White), 18
$wPen.StartCap = [System.Drawing.Drawing2D.LineCap]::Round
$wPen.EndCap = [System.Drawing.Drawing2D.LineCap]::Round
$g.DrawLine($wPen, 78, 128, 170, 128)
$g.DrawLine($wPen, 170, 128, 142, 100)
$g.DrawLine($wPen, 170, 128, 142, 156)

$bmp.Save($out, [System.Drawing.Imaging.ImageFormat]::Png)

$g.Dispose()
$bmp.Dispose()
Write-Host "icon written: $out"