Attribute VB_Name = "Module1"
Sub progressbar()
On Error Resume Next
With ActivePresentation
For X = 1 To .Slides.Count
.Slides(X).Shapes("PB").Delete
Set s = .Slides(X).Shapes.AddShape(msoShapeRectangle, _
0, .PageSetup.SlideHeight - 12, _
X * .PageSetup.SlideWidth / .Slides.Count, 12)
s.Fill.ForeColor.RGB = RGB(231, 74, 33)
s.Name = "PB"
Next X:
End With
End Sub
