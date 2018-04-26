#tag Class
Protected Class TaskController
	#tag Method, Flags = &h0
		Sub Add(title as String)
		  if (self.listView <> nil) then
		     self.listView.AddRow("", title)
		  end if
		  dim ti as TaskItem = new TaskItem
		  ti.title = title
		  self.listModel.AddTask(ti)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(view As Listbox)
		  self.listModel = new TaskList
		  self.listView = view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Remove(taskIndex As Integer)
		  if (self.listView <> nil) then
		    self.listView.RemoveRow(taskIndex)
		  end if
		  self.listModel.DeleteTask(taskIndex)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		listModel As TaskListInterface
	#tag EndProperty

	#tag Property, Flags = &h0
		listView As ListBox
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
			Name="listModel"
			Group="Behavior"
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
