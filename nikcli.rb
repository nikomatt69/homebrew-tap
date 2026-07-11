# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-11T17:26:42.064Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.158.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.158.0/nikcli-ai-darwin-x64.zip"
      sha256 "47c044c632dc9f547f395555f330863612a127dd9009e65051b7180a4f4e8c0c"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.158.0/nikcli-ai-darwin-arm64.zip"
      sha256 "0c5622aef3c6748b34c568c339a44235608c3cd10df73584cd01e72d87d88e3b"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.158.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "63d4255bf189bf300e84ea203aa7179d1b11dddf4d5edfa89572dd440624865c"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.158.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "65df90a4f8da9ed20c14368491dbb12817f95f2c02216f6e29def2939c0dfacb"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

