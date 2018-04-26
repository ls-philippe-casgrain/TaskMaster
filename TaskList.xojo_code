#tag Class
Protected Class TaskList
Implements TaskListInterface
	#tag Method, Flags = &h0
		Sub AddTask(task as TaskItem)
		  self.tasks.Append(task)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CompleteTask(taskIndex As Integer)
		  if taskIndex > self.tasks.Ubound() then
		    return
		  end if
		  Dim task As TaskItem = self.tasks(taskIndex)
		  task.completed = True
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DeleteTask(taskIndex As Integer)
		  if taskIndex > self.tasks.Ubound() then
		    return
		  end if
		  self.tasks.Remove(taskIndex)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UncompleteTask(taskIndex As Integer)
		  if taskIndex > self.tasks.Ubound() then
		    return
		  end if
		  Dim task As TaskItem = self.tasks(taskIndex)
		  task.completed = False
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		tasks() As TaskItem
	#tag EndProperty


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
			Name="tasks()"
			Group="Behavior"
			Type="Integer"
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
