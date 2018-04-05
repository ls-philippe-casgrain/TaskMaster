#tag Module
Protected Module Extensions
	#tag Method, Flags = &h0
		Sub ResizeControlsForLinux(Extends w As Window)
		  // Loop through all the RectControls on the Window and adjust their
		  // heights to match what the system theme says the minimum height is.
		  // Call this method in the Open event handler of a Window like this:
		  // Self.ResizeControlsForLinux
		  
		  #If TargetLinux Then
		    Declare Sub gtk_widget_get_preferred_size Lib "libgtk-3" _
		    (widget As Integer, ByRef minSize As GtkRequisition, ByRef naturalSize As GtkRequisition)
		    Dim minSize, naturalSize As GtkRequisition
		    
		    For iter As Integer = 0 To w.ControlCount - 1
		      Dim c As Control = w.Control(iter)
		      
		      If c IsA RectControl Then
		        gtk_widget_get_preferred_size(c.Handle, minSize, naturalSize)
		        Dim rc As RectControl = RectControl(c)
		        rc.Height = minSize.Height
		      End If
		    Next
		  #Endif
		End Sub
	#tag EndMethod


	#tag Structure, Name = GtkRequisition, Flags = &h21, Attributes = \"StructureAlignment \x3D 1"
		Width As Int32
		Height As Int32
	#tag EndStructure


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
