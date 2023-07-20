Public Class FoodForest
    Private Sub MainForm_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        'Create a new instance of the Food Forest
        Dim FoodForest As New FoodForest()

        'Create the nodes and sub nodes of the Food Forest
        FoodForest.AddNode("Fruits")
        FoodForest.AddNode("Berries")
        FoodForest.AddSubNode("Berries", "Strawberries")
        FoodForest.AddNode("Vegetables")
        Food Forest.AddSubNode("Vegetables", "Tomatoes")
        Food Forest.AddNode("Grains")
        FoodForest.AddSubNode("Grains", "Wheat")

        'Set the Food Forest's background color
        FoodForest.BackgroundColor = Color.Green

        'Set the Food Forest's layout strategy
        FoodForest.LayoutStrategy = LayoutStrategy.GrowWithTarget

        'Set the Food Forest's style
        FoodForest.Style = GraphStyle.Organic

        'Set the Food Forest's size
        FoodForest.Size = new Size(500, 500)

        'Set the Food Forest's font
        FoodForest.Font = New Font ("Calibri", 12)

        'Set the background image of the Food Forest
        FoodForest.BackgroundImage = Image.FromFile("pathToImage")

        'Set the nodes in the Food Forest
        FoodForest.Nodes = New NodeCollection()

        'Add the nodes to the Food Forest
        FoodForest.Nodes.Add(New Node("Fruits"))
        FoodForest.Nodes.Add(New Node("Berries"))
        FoodForest.Nodes.Add(New Node("Vegetables"))
        FoodForest.Nodes.Add(New Node("Grains"))

        'Set the sub nodes of the Food Forest
        FoodForest.Nodes("Fruits").Nodes = New NodeCollection()
        FoodForest.Nodes("Berries").Nodes = New NodeCollection()
        FoodForest.Nodes("Vegetables").Nodes = New NodeCollection()
        FoodForest.Nodes("Grains").Nodes = New NodeCollection()

        'Add the sub nodes to the Food Forest
        FoodForest.Nodes("Fruits").Nodes.Add(New Node("Apple"))
        FoodForest.Nodes("Fruits").Nodes.Add(New Node("Banana"))
        FoodForest.Nodes("Berries").Nodes.Add(New Node("Strawberries"))
        FoodForest.Nodes("Berries").Nodes.Add(New Node("Blueberries"))
        FoodForest.Nodes("Vegetables").Nodes.Add(New Node("Tomatoes"))
        FoodForest.Nodes("Vegetables").Nodes.Add(New Node("Carrots"))
        FoodForest.Nodes("Grains").Nodes.Add(New Node("Wheat"))
        FoodForest.Nodes("Grains").Nodes.Add(New Node("Rice"))

        'Set the parameters of the nodes
        FoodForest.Nodes("Fruits").Parameters = New NodeParameters()
        FoodForest.Nodes("Fruits").Parameters.BackgroundColor = Color.Orange
        FoodForest.Nodes("Fruits").Parameters.ForegroundColor = Color.White

        FoodForest.Nodes("Berries").Parameters = New NodeParameters()
        FoodForest.Nodes("Berries").Parameters.BackgroundColor = Color.Red
        FoodForest.Nodes("Berries").Parameters.ForegroundColor = Color.Black

        FoodForest.Nodes("Vegetables").Parameters = New NodeParameters()
        FoodForest.Nodes("Vegetables").Parameters.BackgroundColor = Color.Green
        FoodForest.Nodes("Vegetables").Parameters.ForegroundColor = Color.White

        FoodForest.Nodes("Grains").Parameters = New NodeParameters()
        FoodForest.Nodes("Grains").Parameters.BackgroundColor = Color.Brown
        FoodForest.Nodes("Grains").Parameters.ForegroundColor = Color.Black

        'Set the parameters of the sub nodes
        FoodForest.Nodes("Fruits").Nodes("Apple").Parameters = New NodeParameters()
        FoodForest.Nodes("Fruits").Nodes("Apple").Parameters.BackgroundColor = Color.Red
        FoodForest.Nodes("Fruits").Nodes("Apple").Parameters.ForegroundColor = Color.White

        FoodForest.Nodes("Fruits").Nodes("Banana").Parameters = New NodeParameters()
        FoodForest.Nodes("Fruits").Nodes("Banana").Parameters.BackgroundColor = Color.Yellow
        FoodForest.Nodes("Fruits").Nodes("Banana").Parameters.ForegroundColor = Color.Black

        FoodForest.Nodes("Berries").Nodes("Strawberries").Parameters = New NodeParameters()
        Food Forest.Nodes("Berries").Nodes("Strawberries").Parameters.BackgroundColor = Color.Red
        FoodForest.Nodes("Berries").Nodes("Strawberries").Parameters.ForegroundColor = Color.White

        FoodForest.Nodes("Berries").Nodes("Blueberries").Parameters = New NodeParameters()
        FoodForest.Nodes("Berries").Nodes("Blueberries").Parameters.BackgroundColor = Color.Blue
        FoodForest.Nodes("Berries").Nodes("Blueberries").Parameters.ForegroundColor = Color.White

        FoodForest.Nodes("Vegetables").Nodes("Tomatoes").Parameters = New NodeParameters()
        FoodForest.Nodes("Vegetables").Nodes("Tomatoes").Parameters.BackgroundColor = Color.Red
        FoodForest.Nodes("Vegetables").Nodes("Tomatoes").Parameters.ForegroundColor = Color.Black

        FoodForest.Nodes("Vegetables").Nodes("Carrots").Parameters = New NodeParameters()
        FoodForest.Nodes("Vegetables").Nodes("Carrots").Parameters.BackgroundColor = Color.Orange
        FoodForest.Nodes("Vegetables").Nodes("Carrots").Parameters.ForegroundColor = Color.White

        FoodForest.Nodes("Grains").Nodes("Wheat").Parameters = New NodeParameters()
        FoodForest.Nodes("Grains").Nodes("Wheat").Parameters.BackgroundColor = Color.Tan
        FoodForest.Nodes("Grains").Nodes("Wheat").Parameters.ForegroundColor = Color.White

        FoodForest.Nodes("Grains").Nodes("Rice").Parameters = New NodeParameters()
        FoodForest.Nodes("Grains").Nodes("Rice").Parameters.BackgroundColor = Color.White
        FoodForest.Nodes("Grains").Nodes("Rice").Parameters.ForegroundColor = Color.Black

        'Set the Food Forest to the form
        Me.Controls.Add(FoodForest)
    End Sub
End Class