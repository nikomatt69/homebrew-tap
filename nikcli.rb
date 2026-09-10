# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-10T17:43:34.318Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.338.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.338.0/nikcli-ai-darwin-x64.zip"
      sha256 "384fab24f2a5875c81dc531f3dca29045962e239c020118390910fc4bb74ab4d"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.338.0/nikcli-ai-darwin-arm64.zip"
      sha256 "fe052f9288e11ba4062ec1623f5dcb3cc709fe3904092dfc607dbd78eba695af"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.338.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "d0604f8871487aef346dddcce29a8eeb6991f085d77e50835ed2cafc3b992976"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.338.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "471f5f5e82927a3ffd2f08c62a05f4f8888e3484fc12da44ba0d88d7820fbe3c"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

