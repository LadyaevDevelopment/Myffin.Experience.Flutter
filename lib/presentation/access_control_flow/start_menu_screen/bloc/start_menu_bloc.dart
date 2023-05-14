import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:myffin_experience_flutter/domain/access_control/policy_document.dart';
import 'package:sal/sal.dart';

part 'start_menu_event.dart';
part 'start_menu_state.dart';

class StartMenuBloc extends Bloc<StartMenuEvent, StartMenuState> {
  StartMenuBloc() : super(StartMenuInitial()) {
    on<StartMenuEvent>((event, emit) async {
      if (event is StartMenuGetPolicyDocuments) {
        await _getPolicyDocuments(emit);
      }
    });
  }

  Future _getPolicyDocuments(Emitter<StartMenuState> emit) async {
    emit.call(StartMenuProgress());
    final result =
        await MiscApiNetworkClient(const ApiNetworkClientDefaultConfiguration("http://192.168.1.148/myffin.api/v1"))
            .getPolicyDocuments(accessToken: "");
    if (result.operationStatus == OperationStatus.success) {
      final documents =
          result.responseData!.documents.map((item) => PolicyDocument(title: item.title, url: item.url)).toList();
      emit.call(StartMenuDocuments(documents: documents));
    } else {
      emit.call(StartMenuError());
    }
  }
}
