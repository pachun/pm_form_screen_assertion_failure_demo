class AppDelegate < PM::Delegate
  def on_load(*)
    open TestFormScreen.new(nav_bar: true)
  end
end

module SomeNamespaceAnyNamespace
  class MyController
    class << self
      alias :new_instance :new
    end
  end
end

class TestFormScreen < PM::FormScreen
  title "Account info"

  def form_data
    [{
      title: "Account Information",
      footer: "Some help text",
      cells: [{
        name: "email",
        title: "Email",
        type: :email,
        value: "hi@dj.dude",
      }]
    }]
  end
end
