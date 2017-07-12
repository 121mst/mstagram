module PctsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_pcts_path
    elsif action_name == 'edit'
      pct_path
    end
  end
end
