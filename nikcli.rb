# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-10T22:58:01.206Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.339.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.339.0/nikcli-ai-darwin-x64.zip"
      sha256 "a5704942ee04d75e5453a37e2cc6da655e03497fbe4056b336300ddc6241f2af"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.339.0/nikcli-ai-darwin-arm64.zip"
      sha256 "85e7b4cbed771d7f8d47fd47b22c78e171af8f063bc6b2d1cdc45ee3c45b4e34"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.339.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "44deb35c001c12807da2722f5b3d2b774b9cef63458a127b422004574571552c"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.339.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "01e46331c0660d516365d94d813bc689c97f3a6073dd01a31738e70b94bc119f"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

