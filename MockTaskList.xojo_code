#tag Class
Protected Class MockTaskList
Implements TaskListInterface
	#tag Method, Flags = &h0
		Sub AddTask(task as TaskItem)
		  // Part of the TaskListInterface interface.
		  
		  self.addCount = self.addCount + 1
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CompleteTask(taskIndex As Integer)
		  // Part of the TaskListInterface interface.
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DeleteTask(taskIndex As Integer)
		  // Part of the TaskListInterface interface.
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UncompleteTask(taskIndex As Integer)
		  // Part of the TaskListInterface interface.
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		addCount As Integer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="addCount"
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
