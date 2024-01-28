import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/secreens/my_network/components/my_node.dart';
import 'package:flutter/material.dart';
import 'package:graphview/GraphView.dart';





class MyGraph extends StatelessWidget {
  late List<MyNode> nodes=[];
  SecreenSize size;
  MyGraph({required this.size}) ;

  @override
  Widget build(BuildContext context) {
    return GraphView(
        graph: getGraph(),
        algorithm:  BuchheimWalkerAlgorithm(getConfigration(), TreeEdgeRenderer(getConfigration())),
        builder: (node){
          return nodes.firstWhere((element) => element.id==(node.key!.value as int)).nodeWidget;
        }
    );
  }

  Graph getGraph(){
    //level1
    MyNode node1=MyNode(id: 1, name: 'Daizy Kathrine', size:size , isPrimaryColor: true);
    //level2
    MyNode node2=MyNode(id: 2, name: 'Daizy Kathrine', size:size , isPrimaryColor: true);
    MyNode node3=MyNode(id: 3, name: 'Daizy Kathrine', size:size , isPrimaryColor: true);
    MyNode node4=MyNode(id: 4, name: 'Daizy Kathrine', size:size , isPrimaryColor: false);
    //level3
    MyNode node5=MyNode(id: 5, name: 'kyla Poris', size:size , isPrimaryColor: true);
    MyNode node6=MyNode(id: 6, name: 'kyla Poris', size:size , isPrimaryColor: true);
    MyNode node7=MyNode(id: 7, name: 'kyla Poris', size:size , isPrimaryColor: false);

    MyNode node8=MyNode(id: 8, name: 'kyla Poris', size:size , isPrimaryColor: true);
    MyNode node9=MyNode(id: 9, name: 'kyla Poris', size:size , isPrimaryColor: true);
    MyNode node10=MyNode(id: 10, name: 'Kyla poris', size:size , isPrimaryColor: false);

    MyNode node11=MyNode(id: 11, name: 'Kyla poris', size:size , isPrimaryColor: true);
    MyNode node12=MyNode(id: 12, name: 'Kyla poris', size:size , isPrimaryColor: true);
    MyNode node13=MyNode(id: 13, name: 'Kyla poris', size:size , isPrimaryColor: false);

    nodes.add(node1);
    nodes.add(node2);
    nodes.add(node3);
    nodes.add(node4);
    nodes.add(node5);
    nodes.add(node6);
    nodes.add(node7);
    nodes.add(node8);
    nodes.add(node9);
    nodes.add(node10);
    nodes.add(node11);
    nodes.add(node12);
    nodes.add(node13);




    Graph graph=Graph();

    Paint paint=Paint()
      ..color=AppColors.secondaryColor
    ..strokeWidth=1.2;

    graph.addEdge(node1.node,node2.node,paint: paint);
    graph.addEdge(node1.node,node3.node,paint: paint);
    graph.addEdge(node1.node,node4.node,paint: paint);

    graph.addEdge(node2.node,node5.node,paint: paint);
    graph.addEdge(node2.node,node6.node,paint: paint);
    graph.addEdge(node2.node,node7.node,paint: paint);



    graph.addEdge(node3.node,node8.node,paint: paint);
    graph.addEdge(node3.node,node9.node,paint: paint);
    graph.addEdge(node3.node,node10.node,paint: paint);


    graph.addEdge(node4.node,node11.node,paint: paint);
    graph.addEdge(node4.node,node12.node,paint: paint);
    graph.addEdge(node4.node,node13.node,paint: paint);




    return graph;

  }

  BuchheimWalkerConfiguration getConfigration() {
    BuchheimWalkerConfiguration configuration = BuchheimWalkerConfiguration();
    configuration
      ..siblingSeparation = (100)
      ..levelSeparation = (150)
      ..subtreeSeparation = (150)
      ..orientation =size==SecreenSize.large
          ?(BuchheimWalkerConfiguration.ORIENTATION_TOP_BOTTOM)
          :(BuchheimWalkerConfiguration.ORIENTATION_LEFT_RIGHT) ;
    return configuration;
  }

}
