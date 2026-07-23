# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-23T22:00:44.244Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.196.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.196.0/nikcli-ai-darwin-x64.zip"
      sha256 "ee07431b350be6cb6c23882d1ba03cb7f0a9d8a9ad906e47e51c4f30306b0fbe"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.196.0/nikcli-ai-darwin-arm64.zip"
      sha256 "7aea432924ed18e9e3261ae6540d68b4106947348eb3d1a538444998da90b112"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.196.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "57efa5412302b477cf097c8d41222180c892ab9da588b48445d03b4d9dba6161"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.196.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "8cc83fc7a3a5b9100861b20c126f971ff5439d0d7a93b30cdf25e7f9dcfe889b"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

