#tag Class
Protected Class TaskListTests
Inherits TestGroup
	#tag Method, Flags = &h0
		Sub AddTest()
		  Dim tl as TaskList = new TaskList
		  
		  Dim ti as TaskItem = new TaskItem
		  ti.title = "Hello, world!"
		  
		  tl.AddTask(ti)
		  
		  dim r As TaskItem = tl.tasks(0)
		  
		  Assert.AreEqual(r.title, ti.title)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DeleteTest()
		  Dim tl as TaskList = new TaskList
		  
		  Dim t1 as TaskItem = new TaskItem
		  t1.title = "The quick brown fox"
		  
		  Dim t2 as TaskItem = new TaskItem
		  t2.title = "jumped over"
		  
		  Dim t3 as TaskItem = new TaskItem
		  t3.title = "the lazy dog"
		  
		  tl.AddTask(t1)
		  tl.AddTask(t2)
		  tl.AddTask(t3)
		  
		  dim r As TaskItem = tl.tasks(0)
		  Assert.AreEqual(r.title, "The quick brown fox")
		  
		  tl.DeleteTask(0)
		  
		  r = tl.tasks(0)
		  Assert.AreEqual(r.title, "jumped over")
		  
		  tl.DeleteTask(2)
		  
		  r = tl.tasks(0)
		  Assert.AreEqual(r.title, "jumped over")
		  
		End Sub
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="Duration"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FailedTestCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IncludeGroup"
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsRunning"
			Group="Behavior"
			Type="Boolean"
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
			Name="NotImplementedCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PassedTestCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RunTestCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SkippedTestCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StopTestOnFail"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TestCount"
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
