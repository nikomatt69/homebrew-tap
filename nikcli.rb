# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-10T12:02:03.189Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.61.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.61.0/nikcli-ai-darwin-x64.zip"
      sha256 "87b916cbb688f6f2b2b65a0f17d77b187aa5a16f97d497d652ae4e9f988d7065"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.61.0/nikcli-ai-darwin-arm64.zip"
      sha256 "221410e7bfec83393e5ba07908a050fcb9303aef2f471b370df63f7409dd2932"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.61.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "0b449c8f16d8b45f5a3893be817cc04cd1807ce74b01e422a20183ae571adcf1"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.61.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "933733ffd0796ec2602a9d960770ba71558f68b27ca1e84b506744fb3fd72e5f"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

