# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-23T23:40:19.554Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.197.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.197.0/nikcli-ai-darwin-x64.zip"
      sha256 "63a2d5855ff0b7bc98409da0c1c640b07a840c2669bfbbd01b7513a74796513f"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.197.0/nikcli-ai-darwin-arm64.zip"
      sha256 "9b165426a974765b39ebf29bc36c78b229f27529cd3c72ae92067c8f6dfa7e45"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.197.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "bcd8ee4e049582cab50ce25a4266c54d13763a5c85a870ae8ade6e697d522ba3"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.197.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "a0ef512c4a8a32ac183a876ac842220c5c581e9cb250a239dd7a87da8fc43a7a"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

