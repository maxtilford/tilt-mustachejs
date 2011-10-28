require 'tilt'
module Tilt
  class MustacheJS < Template
    def self.default_mime_type
      'application/javascript'
    end
    
    def prepare
    end
    
    def evaluate(scope, locals, &block)
      # stores templates in window.Templates["template_dir.template_file_name"]

      # we use . instead of / as a separator because mustache doesn't like /
      # in partial names

      <<-END
      (function() {

      this.Templates || (this.Templates = {});
      this.Templates[#{scope.logical_path.inspect.gsub("/",".")}] = #{data.inspect};
      })(this);
      END
    end
  end
end

