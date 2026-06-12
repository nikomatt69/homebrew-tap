# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-12T18:11:31.008Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.66.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.66.0/nikcli-ai-darwin-x64.zip"
      sha256 "ddf5aee256157c3c4f9de642d235ad61331cdb0dc3060c1cf2fa5845a8a320e8"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.66.0/nikcli-ai-darwin-arm64.zip"
      sha256 "ba9a6dcfc479fed20d70cd474dc80c7395b4a32baea3d2995edd1670b101b460"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.66.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "9020b2ce64c466a0d277f3ad18664d205788285aa34fe0e4666fcac64a15d669"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.66.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "43e499129e4f79de92a6b283d9e89864fc631363f35910022b83faaaee0f5c7e"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

