
import 'package:bloc/bloc.dart';
import 'package:vexana/vexana.dart';
import 'package:vexana_flutter_example/core/network/network_manager.dart';
import 'package:vexana_flutter_example/feature/todo/model/todo_model.dart';
import 'package:meta/meta.dart';
part 'todo_state.dart';

class TodoCubit extends Cubit<TodoState> {
  TodoCubit() : super(TodoInitial()) {
    _init();
  }
  final INetworkManager networkManager =
      ProjectNetworkManager.instance.networkManager;
  bool isLoading = false;
  List<TodoModel>? model;

  void changeLoading() {
    isLoading = !isLoading;
    emit(TodoLoading());
  }

  Future<List<TodoModel>?> todoService() async {
    final response = await networkManager.send<TodoModel,List<TodoModel>>("/todos",
        parseModel: TodoModel(), method: RequestType.GET);
    print(response.data?[0].title);
    return response.data;
    // return model;
  }
  

  Future<void> _init() async {
    changeLoading();
  model=  await todoService();
    changeLoading();
  }
}
