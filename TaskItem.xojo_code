#tag Class
Protected Class TaskItem
	#tag Property, Flags = &h0
		completed As Boolean
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Dim d As New Dictionary
			  d.value("completed") = self.completed
			  d.value("title") = self.title
			  
			  dim j as JSONItem
			  j = d
			  return j.ToString()
			  
			End Get
		#tag EndGetter
		stringRepresentation As String
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		title As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="completed"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
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
End Class
#tag EndClass
