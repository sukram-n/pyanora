class Rehearsal:

    def prepare(self):
        self._prepare_sheet_music()
        self._prepare_audio()

    def _prepare_sheet_music(self):
        raise NotImplementedError

    def _prepare_audio(self):
        raise NotImplementedError

    def gui(self):
        self._main_window()
        self._sidebar()

    def _main_window(self):
        raise NotImplementedError

    def _sidebar(self):
        raise NotImplementedError
