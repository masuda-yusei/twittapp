module PutsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'create'
      confirm_puts_path
    elsif action_name == 'edit'
      put_path
    end
  end
end
