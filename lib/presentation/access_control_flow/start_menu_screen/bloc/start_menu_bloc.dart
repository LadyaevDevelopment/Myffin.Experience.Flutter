import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:myffin_experience_flutter/domain/entities/access_control/policy_document.dart';
import 'package:myffin_experience_flutter/domain/use_cases/get_policy_documents_use_case.dart';

part 'start_menu_event.dart';
part 'start_menu_state.dart';

class StartMenuBloc extends Bloc<StartMenuEvent, StartMenuState> {
  final _getPolicyDocumentsUseCase = GetPolicyDocumentsUseCase();

  StartMenuBloc() : super(StartMenuInitial()) {
    on<StartMenuEvent>((event, emit) async {
      if (event is StartMenuGetPolicyDocuments) {
        await _getPolicyDocuments(emit);
      }
    });
  }

  Future _getPolicyDocuments(Emitter<StartMenuState> emit) async {
    emit.call(StartMenuProgress());
    final result = await _getPolicyDocumentsUseCase.getPolicyDocuments();
    if (result.success != null) {
      final documents =
          result.success!.documents.map((item) => PolicyDocument(title: item.title, url: item.url)).toList();
      emit.call(StartMenuDocuments(documents: documents));
    } else if (result.commonError != null) {
      emit.call(StartMenuError());
    }
  }
}
