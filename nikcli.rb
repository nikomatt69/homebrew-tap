# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-16T19:23:11.462Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.362.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.362.0/nikcli-ai-darwin-x64.zip"
      sha256 "477061a20ab98d1794b70e99ff9604605cc9d87dc46e270841ebebfa2d68c2ec"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.362.0/nikcli-ai-darwin-arm64.zip"
      sha256 "ca15436e5c67e5244de53c90920fc19dcbabd56fe51c838f5cba0df17dfbecab"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.362.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "b4e97d2d414b8a2fcce26ae1c0461f6e2d20d8c1e74dced718769c0b99eb9280"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.362.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "0a88da420d848bcf421c73170ca3f68c0a4a34add3ab10fe26f5cc08f4304b59"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

